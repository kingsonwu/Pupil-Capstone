import {Form, Col, Row, Button } from "react-bootstrap"


const Menteeform = () => {
    return (
        <div className="wrapper">
        <Form >
         <Row className="mb-3 sm xs={2}">
          <Form.Group as={Col} controlId="formGridName">
            <Form.Label>First Name</Form.Label>
            <Form.Control  type="First name" placeholder="First Name" />
          </Form.Group>
      
          <Form.Group as={Col} controlId="formGridName1">
            <Form.Label>Last Name</Form.Label>
            <Form.Control type="Last name" placeholder="Last name" />
          </Form.Group>
        </Row>
      
        <Form.Group className="mb-3 sm" controlId="formGridemail">
          <Form.Label>Email</Form.Label>
          <Form.Control type="email" placeholder="jimmy@aol.com" />
        </Form.Group>
      
        <Form.Group className = 'mb-3'>   
        <Form.Label className = "mb-2">Please select skill type</Form.Label> 
        </Form.Group>
      
        <Form.Group className="mt-1 mb-3 xs={1}" >
          <Form.Label>About</Form.Label>
          <Form.Control placeholder="Tell us about yourself" />
        </Form.Group>
      
        <Row className="mb-3 xs={1}">
          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>City</Form.Label>
            <Form.Control />
          </Form.Group>
      
          <Form.Group as={Col} controlId="formGridState">
            <Form.Label>State</Form.Label>
            <Form.Select defaultValue="Choose...">
              <option>Choose...</option>
              <option>AL</option>
              <option>AK</option>
              <option>AZ</option>
              <option>AR</option>
              <option>CA</option>
              <option>CO</option>
              <option>CT</option>
              <option>DE</option>
              <option>FL</option>
              <option>GA</option>
              <option>HI</option>
              <option>ID</option>
              <option>IL</option>
              <option>IN</option>
              <option>IA</option>
              <option>KS</option>
              <option>KY</option>
              <option>LA</option>
              <option>ME</option>
              <option>MD</option>
              <option>MI</option>
              <option>MN</option>
              <option>MS</option>
              <option>MO</option>
              <option>MT</option>
              <option>NE</option>
              <option>NV</option>
              <option>NH</option>
              <option>NJ</option>
              <option>NM</option>
              <option>NY</option>
              <option>NC</option>
              <option>ND</option>
              <option>OH</option>
              <option>OK</option>
              <option>OR</option>
              <option>PA</option>
              <option>RI</option>
              <option>SC</option>
              <option>SD</option>
              <option>TN</option>
              <option>TX</option>
              <option>UT</option>
              <option>VT</option>
              <option>VA</option>
              <option>WA</option>
              <option>WV</option>
              <option>WI</option>
              <option>WY</option>
              <option></option>
            </Form.Select>
          </Form.Group>
          </Row>
      <Row className ="mb-4 rowText1" md={2} sm={1}>
          <Form.Group as={Col} controlId="formGridZip">
            <Form.Label>Zip</Form.Label>
            <Form.Control />
          </Form.Group>
        </Row>
      
        <Form.Group className="mb-3" id="formGridCheckbox">
          <Form.Check value="hello world" type="checkbox" label="I agree to commit to growth throught this process." required/>
        </Form.Group>
      
        <Button variant="dark" type="submit" >
          Submit
        </Button>
       </Form>
      </div>
          )
      }
      export default Menteeform