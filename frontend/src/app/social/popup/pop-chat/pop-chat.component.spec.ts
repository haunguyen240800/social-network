import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PopChatComponent } from './pop-chat.component';

describe('PopChatComponent', () => {
  let component: PopChatComponent;
  let fixture: ComponentFixture<PopChatComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PopChatComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PopChatComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
