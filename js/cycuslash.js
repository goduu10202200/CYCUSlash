//SendDataAjax
function SendDataAJAX_pk(id_question, id_answer, other, id_student, score) {
  axios({
    method: "post",
    url: "./backend/ajax_answer.php",
    data: {
      score: score,
      other: other,
      id_answer: id_answer,
      id_student: id_student,
      id_question: id_question
    }
  })
    .then(function(response) {
      if (response.data == "no student id") {
        alert("請輸入學號，跳轉到登入頁面");
        window.location.href = "./enter.html";
      }
      console.log(response.data);
    })
    .catch(function(error) {
      console.log(error);
    });
}

//SendDataAjax
function SendDataAJAX_enter(myclass, name, id_student) {
  axios({
    method: "post",
    url: "./backend/ajax_login.php",
    data: {
      name: name,
      myclass: myclass,
      id_student: id_student
    }
  })
    .then(function(response) {
      console.log(response.data);
    })
    .catch(function(error) {
      console.log(error);
    });
}
console.log(
  "%c (╬ﾟдﾟ)╭∩╮ \n跨三小！不要隨便亂來 ",
  "font-size:30pt; color: red"
);
