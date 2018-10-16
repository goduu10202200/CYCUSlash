/********************************************************************************
     File:																
          question.js                         
    Name:
        Rocky
    Date:
        2018/10/09
*********************************************************************************/

//  Update Vue function data
/*
 objSS           =>  var vm = new Vue, 
 question_id  => now question.id(not next question.id),
 answer_id    => now answer.id(not next answer.id),
 item              => now answer(decide input text display ),
repeat            => prevent double item = "其他" and  click button can display next question
*/
function getNextData(objSS, question_id, answer_id, item, repeat) {
  if (item == "其他" && repeat != 1) {
    objSS.seen = !this.seen;
    objSS.finish = "";
    objSS.score = "";
  } else {
    var getjson = JSON.parse(decide_nextdata(question_id, answer_id));
    objSS.score = getjson.score;
    objSS.finish = getjson.finish;
    objSS.answer = getjson.answer;
    objSS.question = getjson.question;
    objSS.id_question = getjson.question_id;
  }
}

// Judge question and answer
function decide_nextdata(id_question, id_answer) {
  data = JSONdata;
  data[0].opt = "";

  var answer = [];
  var question, question_id, pos, opt, finish, score;
  var question_next = id_question + 1;

  for (var i = 0; i < data.length; i++) {
    opt = data[i].opt;
    if (opt == "any") {
      if (data[i].parent.length != undefined) {
        for (var y = 0; y < data[i].parent.length; y++) {
          if (data[i].parent[y] == id_question) {
            question = show_question(i);
            question_id = data[i].id;
            if (data[i].finish != null) {
              finish = data[i].finish;
              score = data[i].score;
            }
            if (data[i].answer != null) {
              for (var k = 0; k < data[i].answer.length; k++) {
                answer[k] = show_answer(i, k);
              }
            }
          }
        }
      } else if (data[i].parent == id_question) {
        question = show_question(i);
        question_id = data[i].id;
        if (data[i].finish != null) {
          finish = data[i].finish;
          score = data[i].score;
        }
        if (data[i].answer != null) {
          for (var k = 0; k < data[i].answer.length; k++) {
            answer[k] = show_answer(i, k);
          }
        }
      }
    } else if (opt.length != undefined) {
      for (var y = 0; y < data[i].opt.length; y++) {
        if (data[i].parent == id_question && data[i].opt[y] == id_answer) {
          question = show_question(i);
          question_id = data[i].id;
          if (data[i].finish != null) {
            finish = data[i].finish;
            score = data[i].score;
          }
          if (data[i].answer != null) {
            for (var k = 0; k < data[i].answer.length; k++) {
              answer[k] = show_answer(i, k);
            }
          }
        }
      }
    } else {
      if (data[i].parent == id_question && data[i].opt == id_answer) {
        question = show_question(i);
        question_id = data[i].id;
        if (data[i].finish != null) {
          finish = data[i].finish;
          score = data[i].score;
        }
        if (data[i].answer != null) {
          for (var k = 0; k < data[i].answer.length; k++) {
            answer[k] = show_answer(i, k);
          }
        }
      }
    }
  }
  pos = {
    score: score,
    finish: finish,
    answer: answer,
    question: question,
    question_id: question_id
  };
  return JSON.stringify(pos);
}

// Get question
function show_question(i) {
  output = data[i].question;
  return output;
}

// Get answer
function show_answer(i, k) {
  output = data[i].answer[k];
  return output;
}
