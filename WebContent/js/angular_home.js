/**
 * 
 */
angular.module('ui.bootstrap.demo', ['ui.bootstrap']);
angular.module('ui.bootstrap.demo').controller('AccordionOneCtrl', function ($scope) {
    $scope.oneAtATime = true;

    $scope.groups = [
      {
        title: 'Dynamic Group Header - 1',
        content: 'Dynamic Group Body - 1'
      },
      {
        title: 'Dynamic Group Header - 2',
        content: 'Dynamic Group Body - 2'
      }
    ];

    $scope.items = ['Item 1', 'Item 2', 'Item 3'];

    $scope.addItem = function() {
      var newItemNo = $scope.items.length + 1;
      $scope.items.push('Item ' + newItemNo);
    };

    $scope.status = {
      isFirstOpen: true,
      isFirstDisabled: false
    };
  });
angular.module('ui.bootstrap.demo').controller('AccordionTwoCtrl', function ($scope) {
    $scope.oneAtATime = true;

    $scope.groups = [
      {
        title: 'Dynamic Group Header - 1',
        content: 'Dynamic Group Body - 1'
      },
      {
        title: 'Dynamic Group Header - 2',
        content: 'Dynamic Group Body - 2'
      }
    ];

    $scope.items = ['Item 1', 'Item 2', 'Item 3'];

    $scope.addItem = function() {
      var newItemNo = $scope.items.length + 1;
      $scope.items.push('Item ' + newItemNo);
    };

    $scope.status = {
      isFirstOpen: true,
      isFirstDisabled: false
    };
  });
angular.module('ui.bootstrap.demo').controller('AccordionThirdCtrl', function ($scope) {
    $scope.oneAtATime = true;

    $scope.groups = [
      {
        title: 'Dynamic Group Header - 1',
        content: 'Dynamic Group Body - 1'
      },
      {
        title: 'Dynamic Group Header - 2',
        content: 'Dynamic Group Body - 2'
      }
    ];

    $scope.items = ['Item 1', 'Item 2', 'Item 3'];

    $scope.addItem = function() {
      var newItemNo = $scope.items.length + 1;
      $scope.items.push('Item ' + newItemNo);
    };

    $scope.status = {
      isFirstOpen: true,
      isFirstDisabled: false
    };
  });

angular.module('ui.bootstrap.demo').controller('ModalDemoCtrl', function ($scope, $modal, $log) {

    $scope.items = ['item1', 'item2', 'item3'];

    $scope.open = function (size) {

      var modalInstance = $modal.open({
        templateUrl: 'myModalContent.html',
        controller: 'ModalInstanceCtrl',
        size: size,
        resolve: {
          items: function () {
            return $scope.items;
          }
        }
      });

      modalInstance.result.then(function (selectedItem) {
        $scope.selected = selectedItem;
      }, function () {
        $log.info('Modal dismissed at: ' + new Date());
      });
    };
  });

  // Please note that $modalInstance represents a modal window (instance) dependency.
  // It is not the same as the $modal service used above.

  angular.module('ui.bootstrap.demo').controller('ModalInstanceCtrl', function ($scope, $modalInstance, items) {

    $scope.items = items;
    $scope.selected = {
      item: $scope.items[0]
    };

    $scope.ok = function () {
      $modalInstance.close($scope.selected.item);
    };

    $scope.cancel = function () {
      $modalInstance.dismiss('cancel');
    };
  });
  
//  
//  
//  
  angular.module('ui.bootstrap.demo').controller('PaginationDemoCtrl', function ($scope) {
     
      $scope.friends=[
      {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'1'},
      {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'2'},
      {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'3'},
      {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'4'},
     {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'5'},
      {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'6'},
      
      {name:'John', img:'img/AngelaCoverImage.jpg', like:'7'},
        {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'8'},
      {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'9'},
      {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'10'},
      {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'11'},
     {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'12'},
     
      {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'13'},
      {name:'John', img:'img/AngelaCoverImage.jpg', like:'14'},
      {name:'John', img:'img/AngelaCoverImage.jpg', like:'15'},
      {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'16'},
    {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'17'}
//      ,
//    {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'18'},
//    
//    {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'19'},
//   {name:'Angela', img:'img/AngelaCoverImage.jpg', like:'20'},
//    {name:'Aaron', img:'img/AngelaCoverImage.jpg', like:'21'}
   ];

//      $scope.totalItems = 64;
//      $scope.currentPage = 4;
//
//      $scope.setPage = function (pageNo) {
//        $scope.currentPage = pageNo;
//      };
//
//      $scope.pageChanged = function() {
//        console.log('Page changed to: ' + $scope.currentPage);
//      };
      $scope.Math = window.Math;
      $scope.maxSize = 5;
      $scope.itemPerPage=6;
      $scope.bigTotalItems = $scope.friends.length;
      $scope.bigCurrentPage = 1;
      $scope.numPages=10;
      if ($scope.bigTotalItems % $scope.itemPerPage==0)
          $scope.numPages=$scope.Math.floor($scope.bigTotalItems/$scope.itemPerPage);
      else{
         
          $scope.numPages=$scope.Math.floor($scope.bigTotalItems/$scope.itemPerPage)+2;
          console.log('numPages'+$scope.numPages);
      }
    });