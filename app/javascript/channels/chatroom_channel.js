import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        const dummyDiv = document.createElement('div')
        dummyDiv.innerHTML = data


        const messageDiv = dummyDiv.querySelector('div')

        const author = messageDiv.dataset.author
        const currentUser = document.body.dataset.user

        const isCurrentUser = author === currentUser

        data = data.replace('message-container-current-user', isCurrentUser ? 'message-container-current-user' : 'message-container-other-user')

        // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML("beforeend", data)

        document.getElementById(messageDiv.id).scrollIntoView()

        clearInput();
      },
    });
  }
}

 const clearInput = () => {
   const messageInput = document.getElementById("message_content");
   if (messageInput) {
    messageInput.value = '';
  }
 }
export { initChatroomCable, clearInput };
