import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PopStoryComponent } from './pop-story.component';

describe('PopStoryComponent', () => {
  let component: PopStoryComponent;
  let fixture: ComponentFixture<PopStoryComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PopStoryComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PopStoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
