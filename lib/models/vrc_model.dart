class CheckMessage {
  bool checkMessage(List<String> message, String parityType) {
    int parity = 0;

    // Loop through each bit position
    for (int i = 0; i < message[0].length; i++) {
      int onesCount = 0;

      // Count the number of ones in the current bit position
      for (int j = 0; j < message.length; j++) {
        if (message[j][i] == '1') {
          onesCount++;
        }
      }

      // Check the parity type and update parity count accordingly
      if (parityType == 'epc' && onesCount % 2 == 1) {
        parity++;
      } else if (parityType == 'opc' && onesCount % 2 == 0) {
        parity++;
      }
    }

    // Check if the overall parity matches the specified parity type
    return (parityType == 'epc' && parity % 2 == 0) ||
        (parityType == 'opc' && parity % 2 == 1);
  }
}



// class CheckMessage {
//   bool checkMessage(List<String> message, String parityType) {
//     int parity = 0;

//     // first loop ---> nubmber of bits(each 8 digets is one byte)
//     for (int i = 0; i < message[0].length; i++) {
//       int onesCount = 0;
//       for (int j = 0; j < message.length; j++) {
//         if (message[j][i] == '1') {
//           onesCount++;
//         }
//       }
//       if (onesCount % 2 == 1) {
//         parity++;
//       }
//     }

//     return (parityType == 'epc' && parity % 2 == 0) ||
//         (parityType == 'opc' && parity % 2 == 1);
//   }
// }
