var Post = function(id, title, body){
  this.id = id;
  this.title = title;
  this.body = body;
}

Post.prototype = {
  save: function(){
    $.ajax({
      type: 'POST',
      data: { post: {title: this.title, description: this.description}},
      dataType: 'json',
      url: "/posts"
    }).done(function(response){
      console.log("model saved")
      trilloModel.fetchCards();
    }).fail(function(){
      console.log("failed to save")
    })
  },
  update: function(data){
    $.ajax({
      type: 'PUT',
      data: {card: data},
      dataType: 'json',
      url: "http://localhost:3000/users/" + this.id
    }).done(function(response){
      trilloModel.fetchCards();
      console.log("model updated")
    }).fail(function(){
      console.log("failed to updated")
    })
  }
}