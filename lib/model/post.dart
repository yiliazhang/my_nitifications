class Post {
  Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
    this.createTime,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;
  final String createTime;

  bool selected = false;
}
// final List<Post> posts = [
final List<Post> posts = [
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'https://resources.ninghao.org/images/candy-shop.jpg',
    createTime: '2019-01-01',
  ),
  // Post(
  //   title: 'Childhood in a picture',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Contained',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/contained.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Dragon',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/dragon.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Free Hugs',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/free_hugs.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Gravity Falls',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/gravity-falls.png',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Icecream Truck',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/icecreamtruck.png',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'keyclack',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/keyclack.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Overkill',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/overkill.png',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Say Hello to Barry',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Space Skull',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/space-skull.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'The Old Fashioned',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/the-old-fashioned.png',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Tornado',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/tornado.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'Undo',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/undo.jpg',
  //   createTime: '2019-01-01',
  // ),
  // Post(
  //   title: 'White Dragon',
  //   author: 'Mohamed Chahin',
  //   description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
  //   imageUrl: 'https://resources.ninghao.org/images/white-dragon.jpg',
  //   createTime: '2019-01-01',
  // )
];