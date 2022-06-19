var updateBtns = document.getElementsByClassName('update_cart')

for ( i = 0; i < updateBtns.length; i++) 
{
    updateBtns[i].addEventListener('click', function(){
        var foodId= this.dataset.product
        var action = this.dataset.action
        console.log('foodId: ', foodId, 'Action:', action) 

        console.log('USER:' , user)
        if(user == 'AnonymousUser')
        {
            console.log('User is not authenticated')
        }
        else{
            updateUserOrder(foodId, action)
        }
    })
}


function updateUserOrder(foodId, action){
    console.log('User iss logged in, send data...')
    var url = '/update_item/'
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type':'application/json',
            'X-CSRFToken':csrftoken,
        },
        body: JSON.stringify({'foodId': foodId, 'action': action})
    })

    .then((response) =>{
        return response.json()
    })

    .then((data) =>{
        console.log('data:', data)
        location.reload()
    })
}