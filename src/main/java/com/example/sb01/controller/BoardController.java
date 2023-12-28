package com.example.sb01.controller;

import com.example.sb01.dto.BoardDTO;
import com.example.sb01.service.BoardService;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
  @Autowired
  private BoardService boardService;
  @GetMapping("/list")
  public void list(Model model){
    model.addAttribute("totalCount", boardService.totalCount());
    model.addAttribute("boardList", boardService.getList());
  }
  @GetMapping("/register")
  public void registerGet(){}
  @PostMapping("/register")
  public String registerPost(BoardDTO dto){
    int result = boardService.register(dto);
    if (result == 1) {
      return  "redirect:/board/list";
    }
    return "redirect:/board/register";
  }
  @GetMapping({"/view","/modify"})
  public void view(@RequestParam("bno") int bno, Model model){
    BoardDTO boardDTO = boardService.getBoard(bno);
    model.addAttribute("board", boardDTO);
  }

  @PostMapping("/modify")
  public String modifyPost(BoardDTO dto){
    int result = boardService.modify(dto);
    if (result == 1){
      return "redirect:/board/view?bno=" + dto.getBno();
    }
    return "redirect:/board/modify?bno=" + dto.getBno();
  }

  @GetMapping("/remove")
  public String delete(@RequestParam("bno")int bno, Model model){
    BoardDTO board = boardService.getBoard(bno);
    model.addAttribute("board", board);
    int result = boardService.remove(bno);
    if (result != 1){
      return "redirect:/board/view?bno=" + board.getBno();
    }
    return "redirect:/board/list";
  }

}
