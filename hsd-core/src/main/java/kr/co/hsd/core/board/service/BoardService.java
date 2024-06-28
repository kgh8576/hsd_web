package kr.co.hsd.core.board.service;

import kr.co.hsd.core.board.domain.Board;
import kr.co.hsd.core.board.repository.BoardRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-31.
 */
@Service("boardService")
public class BoardService {

    private final Logger log = LoggerFactory.getLogger(BoardService.class);

    @Inject
    private BoardRepository boardRepository;

    /**
     * 게시판 카운트 조회
     * @param board
     * @return int
     */
    @Transactional(readOnly = true)
    public int listBoardCnt(Board board) {
        return boardRepository.listBoardCnt(board);
    }

    /**
     * 게시판 목록 조회
     * @param board
     * @return List<Board>
     */
    @Transactional(readOnly = true)
    public List<Board> listBoard(Board board) {
        return boardRepository.listBoard(board);
    }

    /**
     * 조회수 업데이트
     * @param board
     * @return
     */
    @Transactional
    public int updateBoardHits(Board board){
        return boardRepository.updateBoardHits(board);
    }

    /**
     * 게시판 상세 조회
     * @param board
     * @return Board
     */
    @Transactional(readOnly = true)
    public Board getBoard(Board board) {
        return boardRepository.getBoard(board);
    }

    /**
     * 이전글 조회
     * @param board
     * @return
     */
    @Transactional(readOnly = true)
    public Board getPrevBoard(Board board) {
        return boardRepository.getPrevBoard(board);
    }

    /**
     * 다음글 조회
     * @param board
     * @return
     */
    @Transactional(readOnly = true)
    public Board getNextBoard(Board board) {
        return boardRepository.getNextBoard(board);
    }

}
