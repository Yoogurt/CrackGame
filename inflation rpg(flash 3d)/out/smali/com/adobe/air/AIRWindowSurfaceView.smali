.class public Lcom/adobe/air/AIRWindowSurfaceView;
.super Landroid/view/SurfaceView;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;,
        Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;,
        Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    }
.end annotation


# static fields
.field static final CURSOR_POS_END_DOCUMENT:I = 0x3

.field static final CURSOR_POS_END_LINE:I = 0x1

.field static final CURSOR_POS_START_DOCUMENT:I = 0x2

.field static final CURSOR_POS_START_LINE:I = 0x0

.field static final ID_COPY:I = 0x3

.field static final ID_COPY_ALL:I = 0x4

.field static final ID_CUT:I = 0x1

.field static final ID_CUT_ALL:I = 0x2

.field static final ID_PASTE:I = 0x5

.field static final ID_SELECT_ALL:I = 0x0

.field static final ID_START_SELECTING:I = 0x7

.field static final ID_STOP_SELECTING:I = 0x8

.field static final ID_SWITCH_INPUT_METHOD:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AIRWindowSurfaceView"

.field static final LONG_PRESS_DELAY:I = 0x1f4

.field static final MAX_MOVE_ACTION_ALLOWED:I = 0x4

.field static final POST_TOUCH_MESSAGE_AFTER_DELAY:I = 0x0

.field private static final kDefaultBitsPerPixel:I = 0x20

.field private static final kMotionEventButtonSecondary:I = 0x2

.field private static final kMotionEventToolTypeEraser:I = 0x4

.field private static final kMotionEventToolTypeStylus:I = 0x2

.field private static final kTouchActionBegin:I = 0x2

.field private static final kTouchActionEnd:I = 0x4

.field private static final kTouchActionHoverBegin:I = 0x10

.field private static final kTouchActionHoverEnd:I = 0x20

.field private static final kTouchActionHoverMove:I = 0x8

.field private static final kTouchActionMove:I = 0x1

.field private static final kTouchMetaStateIsEraser:I = 0x4000000

.field private static final kTouchMetaStateIsPen:I = 0x2000000

.field private static final kTouchMetaStateMask:I = 0xe000000

.field private static final kTouchMetaStateSideButton1:I = 0x8000000


# instance fields
.field private inTouch:Z

.field public final kMultitouchGesture:I

.field public final kMultitouchNone:I

.field public final kMultitouchRaw:I

.field private final kSampleSize:F

.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mContextMenuVisible:Z

.field private mCurrentOrientation:I

.field private mCurrentSurfaceFormat:I

.field private mDispatchUserTriggeredSkDeactivate:Z

.field private mDownX:F

.field private mDownY:F

.field private mEatTouchRelease:Z

.field protected mFlashEGL:Lcom/adobe/air/FlashEGL;

.field private mFocusedStageText:Lcom/adobe/air/AndroidStageText;

.field private mFocusedWebView:Lcom/adobe/air/AndroidWebView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

.field private mHideSoftKeyboardOnWindowFocusChange:Z

.field private mHoverInProgress:Z

.field private mHoverMetaState:I

.field private mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

.field private mHt:I

.field private mInputConnection:Lcom/adobe/air/AndroidInputConnection;

.field mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

.field private mIsFullScreen:Z

.field private mLastTouchedXCoord:F

.field private mLastTouchedYCoord:F

.field private mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

.field private mMaliWorkaround:Z

.field private mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMultitouchMode:I

.field private mNeedsCompositingSurface:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintScaled:Landroid/graphics/Paint;

.field private mResizedStageText:Lcom/adobe/air/AndroidStageText;

.field private mResizedWebView:Lcom/adobe/air/AndroidWebView;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaledTouchSlop:I

.field private mSkipHeightFromTop:I

.field private mSurfaceChangedForSoftKeyboard:Z

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceValid:Z

.field private mTextBoxBounds:Landroid/graphics/Rect;

.field private mTrackBallPressed:Z

.field private mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

.field private mVisibleBoundHeight:I

.field private mVisibleBoundWidth:I

.field private mWd:I

.field private mWindowHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aActivityWrapper"    # Lcom/adobe/air/AndroidActivityWrapper;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 69
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchNone:I

    .line 70
    iput v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchRaw:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchGesture:I

    .line 73
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kSampleSize:F

    .line 85
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 86
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 87
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 88
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 90
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 91
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 92
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 93
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 94
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 95
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 99
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 100
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 101
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 102
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    .line 110
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    .line 111
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 113
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 116
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 117
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 118
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 119
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 120
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 121
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 122
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 123
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 124
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 130
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    .line 135
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 139
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 142
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 146
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 199
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 209
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 210
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 254
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    .line 915
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    .line 259
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 261
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 263
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    .line 265
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, p0}, Lcom/adobe/air/gestures/AIRGestureListener;-><init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    .line 266
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 267
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 269
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setWillNotDraw(Z)V

    .line 271
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setClickable(Z)V

    .line 272
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setEnabled(Z)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusable(Z)V

    .line 274
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusableInTouchMode(Z)V

    .line 275
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    .line 276
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 279
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    .line 280
    return-void
.end method

.method private AllowOSToHandleKeys(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 2007
    packed-switch p1, :pswitch_data_0

    .line 2015
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2013
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2007
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private DoSetOnSystemUiVisibilityChangeListener()V
    .locals 2

    .prologue
    .line 1359
    move-object v0, p0

    .line 1361
    .local v0, "theThis":Lcom/adobe/air/AIRWindowSurfaceView;
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$3;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView$3;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1379
    return-void
.end method

.method private GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .locals 2
    .param p1, "curState"    # Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .param p2, "isPressed"    # Z
    .param p3, "isNormalKey"    # Z

    .prologue
    .line 1959
    if-eqz p3, :cond_2

    .line 1961
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1971
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1991
    :goto_0
    return-object v0

    .line 1965
    :pswitch_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1967
    :pswitch_1
    if-eqz p2, :cond_1

    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1969
    :pswitch_2
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1976
    :cond_2
    if-eqz p2, :cond_3

    .line 1978
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1987
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1982
    :pswitch_3
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1984
    :pswitch_4
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1991
    :cond_3
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1978
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private HandleMetaKeyAction(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1934
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1951
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1952
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1938
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1945
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1934
    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private HandleShortCuts(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2034
    const/16 v3, 0x17

    if-ne p1, v3, :cond_2

    .line 2038
    iget-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    if-nez v3, :cond_1

    .line 2040
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 2041
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    move v0, v1

    .line 2075
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 2045
    goto :goto_0

    .line 2048
    :cond_2
    const/4 v0, 0x0

    .line 2049
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2051
    const/4 v0, 0x1

    .line 2052
    sparse-switch p1, :sswitch_data_0

    .line 2071
    const/4 v0, 0x0

    goto :goto_0

    .line 2056
    :sswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDeleteTextLine()V

    goto :goto_0

    .line 2059
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2062
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2065
    :sswitch_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2068
    :sswitch_4
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2052
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private HideSystemUI()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1342
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1345
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1346
    .local v0, "flags":I
    :cond_2
    move-object v1, p0

    .line 1348
    .local v1, "v":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 1349
    const/16 v2, 0x1707

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private IsIMEInFullScreen()Z
    .locals 2

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1032
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    return v1
.end method

.method private IsPointInTextBox(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "stage"    # I

    .prologue
    .line 1909
    const/4 v0, 0x0

    .line 1911
    .local v0, "bIsPointInTextBox":Z
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 1912
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1914
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    float-to-int v1, p1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_2

    float-to-int v1, p1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_2

    float-to-int v1, p2

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_2

    float-to-int v1, p2

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_2

    .line 1918
    const/4 v0, 0x1

    .line 1925
    :goto_0
    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 1926
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1928
    :cond_1
    return v0

    .line 1922
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsTouchEventHandlingAllowed(IFF)Z
    .locals 3
    .param p1, "stage"    # I
    .param p2, "xCoord"    # F
    .param p3, "yCoord"    # F

    .prologue
    .line 1857
    const/4 v0, 0x1

    .line 1858
    .local v0, "allow":Z
    invoke-direct {p0, p2, p3, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->IsPointInTextBox(FFI)Z

    move-result v1

    .line 1860
    .local v1, "bIsPointInTextBox":Z
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 1862
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    .line 1863
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    .line 1864
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1865
    if-eqz v1, :cond_0

    .line 1867
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    .line 1892
    :cond_0
    :goto_0
    return v0

    .line 1871
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 1873
    if-eqz v1, :cond_0

    .line 1875
    invoke-direct {p0, p2, p3}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchMove(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1877
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v2, :cond_0

    .line 1878
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1882
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1887
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 1889
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v2, :cond_0

    .line 1890
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private IsTouchMove(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1897
    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    sub-float v1, v3, p1

    .line 1898
    .local v1, "scrollX":F
    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    sub-float v2, v3, p2

    .line 1899
    .local v2, "scrollY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 1900
    .local v0, "dist":F
    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 1902
    const/4 v3, 0x1

    .line 1904
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 1
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 1
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRWindowSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
    .locals 1
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidWebView;
    .locals 1
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView;
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;
    .param p1, "x1"    # Lcom/adobe/air/AndroidWebView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidStageText;
    .locals 1
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText;
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;
    .param p1, "x1"    # Lcom/adobe/air/AndroidStageText;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object p1
.end method

.method static synthetic access$802(Lcom/adobe/air/AIRWindowSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/adobe/air/AIRWindowSurfaceView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    return-void
.end method

.method public static hasNavBar(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 733
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v6

    .line 736
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 740
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    .line 741
    .local v2, "hasMenuKey":Z
    const/4 v7, 0x4

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 742
    .local v1, "hasBackKey":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 746
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 747
    .local v0, "d":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 748
    .local v3, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 750
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 751
    .local v5, "viewHeight":I
    if-eqz v5, :cond_0

    .line 754
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 755
    .local v4, "realHeight":I
    if-ne v4, v5, :cond_0

    const/4 v6, 0x0

    goto :goto_0
.end method

.method private hasStatusBar(Landroid/view/Window;)Z
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 1336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1337
    .local v0, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1338
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native nativeCutText(Z)V
.end method

.method private native nativeDeleteTextLine()V
.end method

.method private native nativeDispatchFullScreenEvent(Z)V
.end method

.method private native nativeDispatchSelectionChangeEvent(Z)V
.end method

.method private native nativeForceReDraw()V
.end method

.method private native nativeGetMultitouchMode()I
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSoftKeyboardType()I
.end method

.method private native nativeGetTextBoxBounds()Landroid/graphics/Rect;
.end method

.method private native nativeInsertText(Ljava/lang/String;)V
.end method

.method private native nativeIsEditable()Z
.end method

.method private native nativeIsFullScreenInteractive()Z
.end method

.method private native nativeIsMultiLineTextField()Z
.end method

.method private native nativeIsPasswordField()Z
.end method

.method private native nativeIsTextFieldInSelectionMode()Z
.end method

.method private native nativeIsTextFieldSelectable()Z
.end method

.method private native nativeMoveCursor(I)V
.end method

.method private native nativeOnFormatChangeListener(I)V
.end method

.method private native nativeOnSizeChangedListener(IIZ)V
.end method

.method private native nativePerformWindowPanning(II)Z
.end method

.method private native nativeSelectAllText()V
.end method

.method private native nativeSetKeyboardVisible(Z)V
.end method

.method private native nativeSurfaceCreated()V
.end method

.method private postCheckLongPress()V
    .locals 4

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-nez v0, :cond_0

    .line 1744
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1746
    return-void
.end method

.method private setSurfaceFormatImpl(ZI)V
    .locals 1
    .param p1, "async"    # Z
    .param p2, "format"    # I

    .prologue
    .line 1068
    if-eqz p1, :cond_0

    .line 1069
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$2;

    invoke-direct {v0, p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView$2;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1078
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1076
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    goto :goto_0
.end method

.method private static supportsSystemUiFlags()Z
    .locals 2

    .prologue
    .line 1330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1331
    .local v0, "currentapiVersion":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static supportsSystemUiVisibilityAPI()Z
    .locals 2

    .prologue
    .line 1324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1325
    .local v0, "currentapiVersion":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DispatchSoftKeyboardEventOnBackKey()V
    .locals 1

    .prologue
    .line 2127
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_1

    .line 2129
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->IsIMEInFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    .line 2130
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2132
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 2134
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2136
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 2140
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 2141
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    .line 2142
    :cond_3
    return-void
.end method

.method GetMetaKeyCharacter(Landroid/view/KeyEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1996
    const/4 v0, 0x0

    .line 1997
    .local v0, "state":I
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_1

    .line 1998
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 1999
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_3

    .line 2000
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 2001
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    return v1
.end method

.method public HideSoftKeyboardOnWindowFocusChange()V
    .locals 1

    .prologue
    .line 2030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 2031
    return-void
.end method

.method public IsLandScape()Z
    .locals 2

    .prologue
    .line 1529
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPasswordVisibleSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2092
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2097
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2092
    goto :goto_0

    .line 2094
    :catch_0
    move-exception v0

    move v0, v1

    .line 2097
    goto :goto_0
.end method

.method public IsSurfaceChangedForSoftKeyboard()Z
    .locals 1

    .prologue
    .line 2146
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return v0
.end method

.method public IsTouchUpHandlingAllowed()Z
    .locals 1

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    if-eqz v0, :cond_0

    .line 2104
    const/4 v0, 0x0

    .line 2106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public RestartInput()V
    .locals 2

    .prologue
    .line 1614
    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1615
    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1617
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1618
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1622
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v1, :cond_1

    .line 1623
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 1624
    :cond_1
    return-void
.end method

.method public SetSelectionMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 2111
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchSelectionChangeEvent(Z)V

    .line 2112
    return-void
.end method

.method public SetSurfaceChangedForSoftKeyboard(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 2157
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 2158
    return-void
.end method

.method public clearFullScreen()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1418
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1419
    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v4, v5}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1421
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1423
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1424
    .local v0, "flags":I
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1425
    move-object v3, p0

    .line 1426
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1428
    .end local v0    # "flags":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1429
    .local v1, "main_activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 1431
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1432
    .local v2, "main_window":Landroid/view/Window;
    const/16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1435
    .end local v2    # "main_window":Landroid/view/Window;
    :cond_2
    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1436
    return-void
.end method

.method protected draw(IIIILandroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "wd"    # I
    .param p4, "ht"    # I
    .param p5, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 1124
    iget-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v6, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    add-int v6, p1, p3

    add-int v7, p2, p4

    invoke-direct {v1, p1, p2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1128
    .local v1, "dst":Landroid/graphics/Rect;
    move-object v2, v1

    .line 1130
    .local v2, "intersection":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1131
    .local v0, "c":Landroid/graphics/Canvas;
    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1133
    .local v4, "skipHeight":I
    if-eqz v4, :cond_7

    .line 1135
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v5, v9, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1137
    .local v5, "viewRect":Landroid/graphics/Rect;
    invoke-static {v1, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1140
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "intersection":Landroid/graphics/Rect;
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1141
    .restart local v2    # "intersection":Landroid/graphics/Rect;
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1143
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1144
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 1147
    iget-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v6, :cond_2

    .line 1149
    new-instance v3, Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v3, v9, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1150
    .local v3, "rem":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1153
    .end local v3    # "rem":Landroid/graphics/Rect;
    :cond_2
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 1158
    iget-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v6, :cond_3

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v7, v4

    if-le v6, v7, :cond_3

    .line 1160
    iget v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v6, v4

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 1170
    .end local v5    # "viewRect":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1173
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1176
    if-eqz v4, :cond_4

    iget-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v6, :cond_4

    .line 1177
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1182
    :cond_4
    iget-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz v6, :cond_8

    .line 1183
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1185
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1193
    :cond_5
    :goto_2
    const/4 v6, 0x0

    neg-int v8, v4

    int-to-float v8, v8

    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1194
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1210
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v6, :cond_0

    .line 1211
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v6}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto/16 :goto_0

    .line 1165
    :cond_7
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_1

    .line 1187
    :cond_8
    :try_start_2
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_5

    iget v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_5

    .line 1188
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1189
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1190
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_2

    .line 1194
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1197
    :catch_0
    move-exception v6

    .line 1207
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_1
    move-exception v6

    if-eqz v0, :cond_9

    iget-object v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_9
    throw v6
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWd"    # I
    .param p4, "srcHt"    # I
    .param p5, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1310
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/air/AIRWindowSurfaceView;->draw(IIIILandroid/graphics/Bitmap;)V

    .line 1311
    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 0
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWd"    # I
    .param p4, "srcHt"    # I
    .param p5, "bm"    # Landroid/graphics/Bitmap;
    .param p6, "dstX"    # I
    .param p7, "dstY"    # I
    .param p8, "dstWd"    # I
    .param p9, "dstHt"    # I
    .param p10, "fullsc"    # Z
    .param p11, "bgColor"    # I

    .prologue
    .line 1315
    invoke-virtual/range {p0 .. p11}, Lcom/adobe/air/AIRWindowSurfaceView;->drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V

    .line 1316
    return-void
.end method

.method protected drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 13
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWd"    # I
    .param p4, "srcHt"    # I
    .param p5, "bm"    # Landroid/graphics/Bitmap;
    .param p6, "dstX"    # I
    .param p7, "dstY"    # I
    .param p8, "dstWd"    # I
    .param p9, "dstHt"    # I
    .param p10, "fullsc"    # Z
    .param p11, "bgColor"    # I

    .prologue
    .line 1217
    iget-boolean v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v9, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    const/4 v2, 0x0

    .line 1223
    .local v2, "c":Landroid/graphics/Canvas;
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    add-int v9, p6, p8

    add-int v10, p7, p9

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v3, v0, v1, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1225
    .local v3, "dstRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 1227
    .local v5, "lockedDst":Landroid/graphics/Rect;
    move-object v4, v3

    .line 1229
    .local v4, "intersection":Landroid/graphics/Rect;
    if-eqz p10, :cond_2

    .line 1230
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "lockedDst":Landroid/graphics/Rect;
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v12, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1234
    .restart local v5    # "lockedDst":Landroid/graphics/Rect;
    :goto_1
    iget v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    if-eqz v9, :cond_5

    .line 1236
    iget v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1237
    .local v6, "skipHeight":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    iget v10, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v11, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v8, v9, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1239
    .local v8, "viewRect":Landroid/graphics/Rect;
    invoke-static {v3, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v9

    if-nez v9, :cond_3

    .line 1300
    if-eqz v2, :cond_0

    .line 1301
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1232
    .end local v6    # "skipHeight":I
    .end local v8    # "viewRect":Landroid/graphics/Rect;
    :cond_2
    :try_start_1
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "lockedDst":Landroid/graphics/Rect;
    add-int v9, p6, p8

    add-int v10, p7, p9

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v5, v0, v1, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "lockedDst":Landroid/graphics/Rect;
    goto :goto_1

    .line 1242
    .restart local v6    # "skipHeight":I
    .restart local v8    # "viewRect":Landroid/graphics/Rect;
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "intersection":Landroid/graphics/Rect;
    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1243
    .restart local v4    # "intersection":Landroid/graphics/Rect;
    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1245
    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 1246
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 1248
    move-object v3, v4

    .line 1249
    if-nez p10, :cond_4

    .line 1251
    move-object v5, v4

    .line 1256
    :cond_4
    if-nez p10, :cond_5

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v10, v6

    if-le v9, v10, :cond_5

    .line 1257
    iget v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v9, v6

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 1261
    .end local v6    # "skipHeight":I
    .end local v8    # "viewRect":Landroid/graphics/Rect;
    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    add-int v9, p1, p3

    add-int v10, p2, p4

    invoke-direct {v7, p1, p2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1263
    .local v7, "srcRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v5}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 1264
    iget-object v10, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1267
    if-eqz p10, :cond_6

    .line 1270
    :try_start_2
    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-virtual {v2, v9, v11, v12}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 1276
    :cond_6
    iget-boolean v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz v9, :cond_9

    .line 1277
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1279
    const/4 v9, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1288
    :cond_7
    :goto_2
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v7, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1289
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1300
    if-eqz v2, :cond_8

    .line 1301
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1303
    .end local v3    # "dstRect":Landroid/graphics/Rect;
    .end local v4    # "intersection":Landroid/graphics/Rect;
    .end local v5    # "lockedDst":Landroid/graphics/Rect;
    .end local v7    # "srcRect":Landroid/graphics/Rect;
    :cond_8
    :goto_3
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v9, :cond_0

    .line 1304
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v9}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto/16 :goto_0

    .line 1281
    .restart local v3    # "dstRect":Landroid/graphics/Rect;
    .restart local v4    # "intersection":Landroid/graphics/Rect;
    .restart local v5    # "lockedDst":Landroid/graphics/Rect;
    .restart local v7    # "srcRect":Landroid/graphics/Rect;
    :cond_9
    :try_start_3
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    if-nez v9, :cond_7

    iget v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v11, 0x4

    if-eq v9, v11, :cond_7

    .line 1282
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 1283
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 1289
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1292
    .end local v3    # "dstRect":Landroid/graphics/Rect;
    .end local v4    # "intersection":Landroid/graphics/Rect;
    .end local v5    # "lockedDst":Landroid/graphics/Rect;
    .end local v7    # "srcRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v9

    .line 1300
    if-eqz v2, :cond_8

    .line 1301
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1300
    :catchall_1
    move-exception v9

    if-eqz v2, :cond_a

    .line 1301
    iget-object v10, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_a
    throw v9
.end method

.method public forceSoftKeyboardDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 862
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 863
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setScrollTo(I)Z

    .line 865
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 870
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 872
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 873
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 8
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v7, 0x0

    .line 2173
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 2174
    .local v6, "origin":[I
    invoke-virtual {p0, v6}, Lcom/adobe/air/AIRWindowSurfaceView;->getLocationInWindow([I)V

    .line 2175
    aget v1, v6, v7

    const/4 v0, 0x1

    aget v2, v6, v0

    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 2176
    return v7
.end method

.method public getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method public getAppSpecifiedPixelFormat()I
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    const/16 v0, 0x10

    .line 1496
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public getBoundHeight()I
    .locals 1

    .prologue
    .line 1449
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    return v0
.end method

.method public getBoundWidth()I
    .locals 1

    .prologue
    .line 1442
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    return v0
.end method

.method public getColorDepth()I
    .locals 6

    .prologue
    .line 1468
    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 1469
    const/16 v3, 0x10

    .line 1485
    :cond_0
    :goto_0
    return v3

    .line 1472
    :cond_1
    const/16 v3, 0x20

    .line 1474
    .local v3, "retval":I
    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1475
    .local v2, "main_activity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 1477
    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1479
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 1480
    .local v1, "info":Landroid/graphics/PixelFormat;
    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v4

    invoke-static {v4, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 1482
    iget v3, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    goto :goto_0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 1628
    .line 1629
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1630
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 2

    .prologue
    .line 2151
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMultitouchMode()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    return v0
.end method

.method public getVideoView()Lcom/adobe/flashruntime/shared/VideoView;
    .locals 3

    .prologue
    .line 2162
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    if-nez v1, :cond_0

    .line 2164
    new-instance v0, Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {v0, v1, v2}, Lcom/adobe/flashruntime/air/VideoViewAIR;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    .line 2165
    .local v0, "icsvv":Lcom/adobe/flashruntime/air/VideoViewAIR;
    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    .line 2167
    .end local v0    # "icsvv":Lcom/adobe/flashruntime/air/VideoViewAIR;
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    return-object v1
.end method

.method public getVisibleBoundHeight()I
    .locals 1

    .prologue
    .line 1463
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    return v0
.end method

.method public getVisibleBoundWidth()I
    .locals 1

    .prologue
    .line 1456
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    return v0
.end method

.method public isStageTextInFocus()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStageWebViewInFocus()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->isInTextEditingMode()Z

    move-result v0

    .line 961
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    return v0
.end method

.method public native nativeDispatchUserTriggeredSkDeactivateEvent()V
.end method

.method public native nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;
.end method

.method public native nativeGetTextContentLength()I
.end method

.method public native nativeIsTextSelected()Z
.end method

.method public native nativeOnDoubleClickListener(FF)Z
.end method

.method public native nativeOnKeyListener(IIIZZZ)Z
.end method

.method public native nativeShowOriginalRect()V
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1659
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1661
    iget-boolean v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsFullScreenInteractive()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1739
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "clipboard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1665
    .local v0, "clip":Landroid/text/ClipboardManager;
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView$1;)V

    .line 1668
    .local v1, "handler":Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v2

    .line 1669
    .local v2, "isEditable":Z
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldSelectable()Z

    move-result v3

    .line 1671
    .local v3, "isSelectable":Z
    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    .line 1676
    :cond_2
    if-eqz v3, :cond_5

    .line 1678
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContentLength()I

    move-result v8

    if-lez v8, :cond_8

    move v5, v6

    .line 1679
    .local v5, "textPresent":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 1681
    sget-object v8, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_ALL:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v8}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v7, v7, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x61

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1682
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldInSelectionMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1684
    const/16 v8, 0x8

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_STOP_SELECTING_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1691
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v5, :cond_5

    .line 1693
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result v4

    .line 1694
    .local v4, "isTextSelected":Z
    if-eqz v2, :cond_4

    .line 1696
    if-eqz v4, :cond_a

    .line 1699
    sget-object v8, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v8}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 1700
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x78

    .line 1701
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1710
    :cond_4
    :goto_3
    if-eqz v4, :cond_b

    .line 1712
    const/4 v8, 0x3

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 1713
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x63

    .line 1714
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1724
    .end local v4    # "isTextSelected":Z
    .end local v5    # "textPresent":Z
    :cond_5
    :goto_4
    if-eqz v2, :cond_7

    .line 1726
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1728
    const/4 v8, 0x5

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_PASTE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 1729
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x76

    .line 1730
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1732
    :cond_6
    const/4 v8, 0x6

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_INPUT_METHOD_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 1733
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1736
    :cond_7
    iput-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1737
    iput-boolean v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 1738
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CONTEXT_MENU_TITLE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 1678
    goto/16 :goto_1

    .line 1688
    .restart local v5    # "textPresent":Z
    :cond_9
    const/4 v8, 0x7

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1705
    .restart local v4    # "isTextSelected":Z
    :cond_a
    const/4 v8, 0x2

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 1706
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_3

    .line 1718
    :cond_b
    const/4 v8, 0x4

    sget-object v9, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v9}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 1719
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, -0x1

    .line 1546
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1548
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1554
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1556
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1559
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSoftKeyboardType()I

    move-result v0

    .line 1560
    .local v0, "keyboard":I
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1561
    packed-switch v0, :pswitch_data_0

    .line 1588
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1590
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1592
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsMultiLineTextField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1596
    :cond_1
    new-instance v1, Lcom/adobe/air/AndroidInputConnection;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidInputConnection;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1597
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1598
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1599
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1607
    .end local v0    # "keyboard":I
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    return-object v1

    .line 1566
    .restart local v0    # "keyboard":I
    :pswitch_1
    const/16 v1, 0x11

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1569
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1572
    :pswitch_3
    const/4 v1, 0x1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1575
    :pswitch_4
    const/16 v1, 0x21

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1578
    :pswitch_5
    const/4 v1, 0x3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1581
    :pswitch_6
    const/16 v1, 0x2002

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1603
    .end local v0    # "keyboard":I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1604
    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    .line 421
    const-string v0, "AIRWindowSurfaceView"

    const-string v1, "*** *** onFocusChanged: AIR"

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    if-nez v0, :cond_0

    .line 426
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 427
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 430
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 431
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 416
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v7

    .line 330
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 332
    .local v3, "unichar":I
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v0, v1, :cond_3

    .line 335
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v3

    .line 338
    :cond_3
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleMetaKeyAction(Landroid/view/KeyEvent;)V

    .line 340
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleShortCuts(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result v7

    .line 350
    .local v7, "val":Z
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    .line 2121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    .line 365
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v8

    .line 404
    :cond_0
    :goto_0
    return v7

    .line 368
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 369
    .local v3, "unichar":I
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v0, v1, :cond_3

    .line 372
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v3

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    :cond_4
    const/16 v0, 0x17

    if-ne p1, v0, :cond_5

    .line 379
    iput-boolean v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 383
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result v7

    .line 385
    .local v7, "val":Z
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    .line 388
    :cond_6
    if-nez v7, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 398
    const/4 v7, 0x1

    goto :goto_0

    .end local v7    # "val":Z
    :cond_7
    move v7, v8

    .line 404
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 700
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 702
    return-void
.end method

.method public onTextBoxContextMenuItem(I)Z
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1766
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1767
    .local v0, "clip":Landroid/text/ClipboardManager;
    packed-switch p1, :pswitch_data_0

    .line 1852
    :goto_0
    return v7

    .line 1770
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSelectAllText()V

    .line 1849
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v7, :cond_1

    .line 1850
    iget-object v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v7}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_1
    move v7, v8

    .line 1852
    goto :goto_0

    .line 1774
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, "copy":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1777
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1779
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1781
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    :cond_3
    invoke-virtual {p0, v7}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1787
    .end local v1    # "copy":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v7

    iget-object v2, v7, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1788
    .local v2, "copyAll":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 1790
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1792
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1794
    :cond_4
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1799
    .end local v2    # "copyAll":Ljava/lang/CharSequence;
    :pswitch_3
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1800
    .local v6, "toPaste":Ljava/lang/CharSequence;
    if-eqz v6, :cond_5

    .line 1801
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeInsertText(Ljava/lang/String;)V

    .line 1802
    :cond_5
    invoke-virtual {p0, v7}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1806
    .end local v6    # "toPaste":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual {p0, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1810
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1814
    :pswitch_6
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object v4

    .line 1815
    .local v4, "cutPortion":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 1817
    invoke-direct {p0, v7}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1818
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1820
    invoke-static {v4}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1822
    :cond_6
    invoke-virtual {v0, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    :cond_7
    invoke-virtual {p0, v7}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1827
    .end local v4    # "cutPortion":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v7

    iget-object v3, v7, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1828
    .local v3, "cutAll":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1830
    invoke-direct {p0, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1831
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1833
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1835
    :cond_8
    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1840
    .end local v3    # "cutAll":Ljava/lang/CharSequence;
    :pswitch_8
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1841
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_0

    .line 1842
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 1767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 44
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 435
    const/16 v40, 0x1

    .line 436
    .local v40, "retVal":Z
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 438
    .local v27, "actionCode":I
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    .line 439
    const/16 v15, 0x9

    move/from16 v0, v27

    if-eq v0, v15, :cond_0

    const/16 v15, 0xa

    move/from16 v0, v27

    if-eq v0, v15, :cond_0

    const/4 v15, 0x7

    move/from16 v0, v27

    if-ne v0, v15, :cond_3

    :cond_0
    const/16 v33, 0x1

    .line 443
    .local v33, "isHoverEvent":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasFocus()Z

    move-result v15

    if-nez v15, :cond_4

    if-nez v33, :cond_4

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v34

    .line 446
    .local v34, "overlays":Landroid/widget/RelativeLayout;
    if-eqz v34, :cond_4

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    invoke-virtual {v15}, Lcom/adobe/air/AndroidStageText;->getPreventDefault()Z

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_4

    .line 451
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 452
    invoke-virtual/range {v34 .. v34}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 453
    invoke-virtual/range {v34 .. v34}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v29

    .line 454
    .local v29, "count":I
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_1
    move/from16 v0, v32

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 456
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    .line 457
    .local v43, "view":Landroid/view/View;
    if-eqz v43, :cond_2

    .line 459
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->clearFocus()V

    .line 454
    :cond_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 439
    .end local v29    # "count":I
    .end local v32    # "i":I
    .end local v33    # "isHoverEvent":Z
    .end local v34    # "overlays":Landroid/widget/RelativeLayout;
    .end local v43    # "view":Landroid/view/View;
    :cond_3
    const/16 v33, 0x0

    goto :goto_0

    .line 469
    .restart local v33    # "isHoverEvent":Z
    :cond_4
    const/4 v15, 0x5

    move/from16 v0, v27

    if-eq v0, v15, :cond_5

    if-nez v27, :cond_6

    .line 471
    :cond_5
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    move/from16 v0, v32

    if-ge v0, v15, :cond_6

    .line 473
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    .line 474
    .local v35, "pid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v35

    invoke-virtual {v15, v0, v1, v2}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    .line 471
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 480
    .end local v32    # "i":I
    .end local v35    # "pid":I
    :cond_6
    if-nez v27, :cond_7

    .line 482
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v15}, Lcom/adobe/air/gestures/AIRGestureListener;->mayStartNewTransformGesture()V

    .line 485
    :cond_7
    const/4 v15, 0x5

    move/from16 v0, v27

    if-ne v0, v15, :cond_c

    .line 487
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/adobe/air/gestures/AIRGestureListener;->setPrimaryPointOfTwoFingerTap(FFI)V

    .line 491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/adobe/air/gestures/AIRGestureListener;->setSecondaryPointOfTwoFingerTap(FFI)V

    .line 500
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v15}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v36

    .line 507
    .local v36, "pointerCount":I
    const/16 v28, 0x0

    .line 509
    .local v28, "cancelAllTouch":Z
    const/16 v37, 0x0

    .local v37, "pointerIndex":I
    :goto_4
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_1b

    .line 511
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 512
    .local v6, "xCoord":F
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v7, v15, v17

    .line 514
    .local v7, "yCoord":F
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    .line 515
    move-object/from16 v0, p0

    iput v7, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    .line 517
    const/16 v16, 0x1

    .line 518
    .local v16, "stage":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    .line 519
    .local v26, "action":I
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 520
    .local v9, "pointerId":I
    const/16 v41, 0x0

    .line 522
    .local v41, "sendHoverBegin":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    .line 524
    .local v14, "metaState":I
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xe

    move/from16 v0, v17

    if-lt v15, v0, :cond_a

    .line 525
    const v15, -0xe000001

    and-int/2addr v14, v15

    .line 526
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v42

    .line 527
    .local v42, "toolType":I
    const/4 v15, 0x4

    move/from16 v0, v42

    if-ne v0, v15, :cond_f

    .line 528
    const/high16 v15, 0x4000000

    or-int/2addr v14, v15

    .line 532
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_a

    .line 533
    const/high16 v15, 0x8000000

    or-int/2addr v14, v15

    .line 536
    .end local v42    # "toolType":I
    :cond_a
    if-eqz v28, :cond_10

    .line 538
    const/16 v26, 0x3

    .line 539
    const/16 v16, 0x4

    .line 588
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchEventHandlingAllowed(IFF)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 591
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    .line 592
    .local v10, "contactWidth":F
    move v11, v10

    .line 594
    .local v11, "contactHeight":F
    if-nez v9, :cond_12

    const/4 v12, 0x1

    .line 597
    .local v12, "isPrimaryPoint":Z
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v31

    .line 598
    .local v31, "historySize":I
    add-int/lit8 v15, v31, 0x1

    mul-int/lit8 v15, v15, 0x3

    new-array v13, v15, [F

    .line 599
    .local v13, "history":[F
    const/16 v38, 0x0

    .line 600
    .local v38, "recordIndex":I
    const/16 v30, 0x0

    .local v30, "historyIndex":I
    move/from16 v39, v38

    .end local v38    # "recordIndex":I
    .local v39, "recordIndex":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 602
    add-int/lit8 v38, v39, 0x1

    .end local v39    # "recordIndex":I
    .restart local v38    # "recordIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v15

    aput v15, v13, v39

    .line 603
    add-int/lit8 v39, v38, 0x1

    .end local v38    # "recordIndex":I
    .restart local v39    # "recordIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v15

    aput v15, v13, v38

    .line 604
    add-int/lit8 v38, v39, 0x1

    .end local v39    # "recordIndex":I
    .restart local v38    # "recordIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v15

    aput v15, v13, v39

    .line 600
    add-int/lit8 v30, v30, 0x1

    move/from16 v39, v38

    .end local v38    # "recordIndex":I
    .restart local v39    # "recordIndex":I
    goto :goto_8

    .line 493
    .end local v6    # "xCoord":F
    .end local v7    # "yCoord":F
    .end local v9    # "pointerId":I
    .end local v10    # "contactWidth":F
    .end local v11    # "contactHeight":F
    .end local v12    # "isPrimaryPoint":Z
    .end local v13    # "history":[F
    .end local v14    # "metaState":I
    .end local v16    # "stage":I
    .end local v26    # "action":I
    .end local v28    # "cancelAllTouch":Z
    .end local v30    # "historyIndex":I
    .end local v31    # "historySize":I
    .end local v36    # "pointerCount":I
    .end local v37    # "pointerIndex":I
    .end local v39    # "recordIndex":I
    .end local v41    # "sendHoverBegin":Z
    :cond_c
    const/4 v15, 0x6

    move/from16 v0, v27

    if-ne v0, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v15}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 495
    :cond_d
    const/4 v15, 0x1

    move/from16 v0, v27

    if-ne v0, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v15}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_e

    .line 496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 497
    :cond_e
    const/4 v15, 0x2

    move/from16 v0, v27

    if-eq v0, v15, :cond_8

    .line 498
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 530
    .restart local v6    # "xCoord":F
    .restart local v7    # "yCoord":F
    .restart local v9    # "pointerId":I
    .restart local v14    # "metaState":I
    .restart local v16    # "stage":I
    .restart local v26    # "action":I
    .restart local v28    # "cancelAllTouch":Z
    .restart local v36    # "pointerCount":I
    .restart local v37    # "pointerIndex":I
    .restart local v41    # "sendHoverBegin":Z
    .restart local v42    # "toolType":I
    :cond_f
    const/4 v15, 0x2

    move/from16 v0, v42

    if-ne v0, v15, :cond_9

    .line 531
    const/high16 v15, 0x2000000

    or-int/2addr v14, v15

    goto/16 :goto_5

    .line 541
    .end local v42    # "toolType":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    const v15, 0xff00

    and-int v15, v15, v26

    shr-int/lit8 v15, v15, 0x8

    .line 542
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    if-ne v9, v15, :cond_b

    .line 544
    :cond_11
    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 546
    packed-switch v26, :pswitch_data_0

    .line 582
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 583
    const/16 v16, 0x1

    goto/16 :goto_6

    .line 549
    :pswitch_1
    const/16 v16, 0x10

    .line 550
    goto/16 :goto_6

    .line 552
    :pswitch_2
    const/16 v16, 0x20

    .line 553
    goto/16 :goto_6

    .line 555
    :pswitch_3
    const/16 v16, 0x8

    .line 557
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xe

    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 560
    move-object/from16 v0, p0

    iput v14, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 561
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    if-nez v15, :cond_b

    .line 563
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x1f4

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 564
    const/16 v41, 0x1

    .line 565
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    goto/16 :goto_6

    .line 571
    :pswitch_4
    const/16 v16, 0x2

    .line 572
    goto/16 :goto_6

    .line 574
    :pswitch_5
    const/16 v28, 0x1

    .line 577
    :pswitch_6
    const/16 v16, 0x4

    .line 578
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v15}, Lcom/adobe/air/gestures/AIRGestureListener;->endTwoFingerGesture()Z

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/adobe/air/gestures/AIRGestureListener;->setCheckForSwipe(Z)V

    goto/16 :goto_6

    .line 594
    .restart local v10    # "contactWidth":F
    .restart local v11    # "contactHeight":F
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 607
    .restart local v12    # "isPrimaryPoint":Z
    .restart local v13    # "history":[F
    .restart local v30    # "historyIndex":I
    .restart local v31    # "historySize":I
    .restart local v39    # "recordIndex":I
    :cond_13
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    .line 610
    .local v8, "pressure":F
    aput v6, v13, v39

    .line 611
    add-int/lit8 v15, v39, 0x1

    aput v7, v13, v15

    .line 612
    add-int/lit8 v15, v39, 0x2

    aput v8, v13, v15

    .line 615
    and-int/lit8 v14, v14, -0x2

    .line 618
    const/4 v5, 0x0

    .line 619
    .local v5, "moveAction":I
    sparse-switch v16, :sswitch_data_0

    .line 641
    :cond_14
    :goto_9
    if-eqz v5, :cond_15

    .line 643
    new-instance v4, Lcom/adobe/air/TouchEventData;

    invoke-direct/range {v4 .. v14}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 653
    .local v4, "touchEventData":Lcom/adobe/air/TouchEventData;
    if-eqz v40, :cond_18

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v4, v0}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v15

    if-eqz v15, :cond_18

    const/16 v40, 0x1

    .line 656
    .end local v4    # "touchEventData":Lcom/adobe/air/TouchEventData;
    :cond_15
    :goto_a
    const/16 v15, 0x8

    move/from16 v0, v16

    if-eq v0, v15, :cond_17

    const/4 v15, 0x1

    move/from16 v0, v16

    if-eq v0, v15, :cond_17

    .line 658
    const/4 v15, 0x3

    move/from16 v0, v26

    if-ne v0, v15, :cond_16

    .line 660
    or-int/lit8 v14, v14, 0x1

    .line 663
    :cond_16
    new-instance v4, Lcom/adobe/air/TouchEventData;

    const/16 v24, 0x0

    move-object v15, v4

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v25, v14

    invoke-direct/range {v15 .. v25}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 673
    .restart local v4    # "touchEventData":Lcom/adobe/air/TouchEventData;
    if-eqz v40, :cond_19

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v4, v0}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v15

    if-eqz v15, :cond_19

    const/16 v40, 0x1

    .line 509
    .end local v4    # "touchEventData":Lcom/adobe/air/TouchEventData;
    .end local v5    # "moveAction":I
    .end local v8    # "pressure":F
    .end local v10    # "contactWidth":F
    .end local v11    # "contactHeight":F
    .end local v12    # "isPrimaryPoint":Z
    .end local v13    # "history":[F
    .end local v30    # "historyIndex":I
    .end local v31    # "historySize":I
    .end local v39    # "recordIndex":I
    :cond_17
    :goto_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_4

    .line 622
    .restart local v5    # "moveAction":I
    .restart local v8    # "pressure":F
    .restart local v10    # "contactWidth":F
    .restart local v11    # "contactHeight":F
    .restart local v12    # "isPrimaryPoint":Z
    .restart local v13    # "history":[F
    .restart local v30    # "historyIndex":I
    .restart local v31    # "historySize":I
    .restart local v39    # "recordIndex":I
    :sswitch_0
    const/16 v5, 0x8

    .line 623
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xe

    move/from16 v0, v17

    if-ge v15, v0, :cond_14

    .line 626
    if-eqz v41, :cond_14

    .line 629
    or-int/lit8 v5, v5, 0x10

    goto :goto_9

    .line 635
    :sswitch_1
    const/4 v5, 0x1

    .line 636
    goto :goto_9

    .line 653
    .restart local v4    # "touchEventData":Lcom/adobe/air/TouchEventData;
    :cond_18
    const/16 v40, 0x0

    goto :goto_a

    .line 673
    :cond_19
    const/16 v40, 0x0

    goto :goto_b

    .line 680
    .end local v4    # "touchEventData":Lcom/adobe/air/TouchEventData;
    .end local v5    # "moveAction":I
    .end local v6    # "xCoord":F
    .end local v7    # "yCoord":F
    .end local v8    # "pressure":F
    .end local v9    # "pointerId":I
    .end local v10    # "contactWidth":F
    .end local v11    # "contactHeight":F
    .end local v12    # "isPrimaryPoint":Z
    .end local v13    # "history":[F
    .end local v14    # "metaState":I
    .end local v16    # "stage":I
    .end local v26    # "action":I
    .end local v28    # "cancelAllTouch":Z
    .end local v30    # "historyIndex":I
    .end local v31    # "historySize":I
    .end local v36    # "pointerCount":I
    .end local v37    # "pointerIndex":I
    .end local v39    # "recordIndex":I
    .end local v41    # "sendHoverBegin":Z
    :cond_1a
    const/16 v40, 0x0

    .line 685
    :cond_1b
    if-eqz v40, :cond_1c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_1c

    const/16 v40, 0x1

    .line 692
    :goto_c
    if-eqz v40, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    if-eqz v15, :cond_1d

    const/16 v40, 0x1

    .line 693
    :goto_d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 694
    return v40

    .line 685
    :cond_1c
    const/16 v40, 0x0

    goto :goto_c

    .line 692
    :cond_1d
    const/16 v40, 0x0

    goto :goto_d

    .line 687
    :catch_0
    move-exception v15

    goto :goto_c

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 296
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 302
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 306
    :cond_1
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 309
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v1, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    .line 311
    :cond_3
    if-eqz p1, :cond_4

    .line 314
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 320
    :cond_4
    return-void
.end method

.method public panStageTextInFocus()J
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-nez v0, :cond_0

    .line 1015
    const-wide/16 v0, 0x0

    .line 1026
    :goto_0
    return-wide v0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 1026
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public panStageWebViewInFocus()J
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-nez v0, :cond_0

    .line 974
    const-wide/16 v0, 0x0

    .line 985
    :goto_0
    return-wide v0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 985
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1636
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    if-eqz v2, :cond_2

    .line 1638
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1639
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    .line 1641
    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-eqz v2, :cond_2

    .line 1645
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 1646
    invoke-super {p0}, Landroid/view/SurfaceView;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1648
    const/4 v1, 0x1

    .line 1653
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_2
    return v1
.end method

.method public returnThis()Landroid/view/View;
    .locals 0

    .prologue
    .line 289
    return-object p0
.end method

.method public setCompositingHint(Z)V
    .locals 3
    .param p1, "needsCompositingSurface"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1111
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    .line 1112
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    if-eq v0, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1119
    :cond_1
    :goto_0
    return-void

    .line 1118
    :cond_2
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    goto :goto_0
.end method

.method public setFlashEGL(Lcom/adobe/air/FlashEGL;)V
    .locals 0
    .param p1, "egl"    # Lcom/adobe/air/FlashEGL;

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 2086
    return-void
.end method

.method public setFullScreen()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 1383
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v2, :cond_1

    .line 1385
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1386
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1388
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1390
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1391
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    .line 1393
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1396
    :cond_1
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1397
    .local v0, "main_activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1399
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1407
    .local v1, "main_window":Landroid/view/Window;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "SAMSUNG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1409
    :cond_2
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 1412
    .end local v1    # "main_window":Landroid/view/Window;
    :cond_3
    return-void
.end method

.method public setInputConnection(Lcom/adobe/air/AndroidInputConnection;)V
    .locals 0
    .param p1, "ic"    # Lcom/adobe/air/AndroidInputConnection;

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 2081
    return-void
.end method

.method public setMultitouchMode(I)V
    .locals 0
    .param p1, "multitouchMode"    # I

    .prologue
    .line 706
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 707
    return-void
.end method

.method public setScrollTo(I)Z
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 1038
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1041
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1042
    .local v0, "overlays":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 1046
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView$1;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;ILandroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1063
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setSurfaceFormat(Z)V
    .locals 2
    .param p1, "async"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1082
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1085
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->needsCompositingSurface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isGingerbread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1086
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    .line 1107
    :goto_0
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0

    .line 1096
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-eqz v0, :cond_3

    .line 1098
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0

    .line 1102
    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0
.end method

.method public showActionScript2Warning()V
    .locals 5

    .prologue
    .line 1504
    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1505
    .local v1, "main_activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 1507
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1509
    .local v0, "errorDialog":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1510
    .local v2, "text":Landroid/widget/TextView;
    const-string v3, "Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 1513
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1514
    const-string v3, "Action Script 2.0"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1515
    const-string v3, "OK"

    new-instance v4, Lcom/adobe/air/AIRWindowSurfaceView$4;

    invoke-direct {v4, p0}, Lcom/adobe/air/AIRWindowSurfaceView$4;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1523
    .end local v0    # "errorDialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public showSoftKeyboard(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 941
    invoke-virtual {p0, p1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 942
    return-void
.end method

.method public showSoftKeyboard(ZLandroid/view/View;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 920
    const-string v1, "AIRWindowSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSoftKeyboard show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 922
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_2

    .line 924
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v1, :cond_0

    .line 926
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 929
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 931
    :cond_1
    invoke-direct {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    .line 937
    :goto_0
    return-void

    .line 935
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-virtual {v0, p2, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 11
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 763
    iget-object v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v8}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 764
    .local v3, "main_activity":Landroid/app/Activity;
    const-string v8, "window"

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 765
    .local v1, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 767
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->hasNavBar(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 768
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    .line 771
    :cond_0
    iget-boolean v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->hasNavBar(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v8, v10, :cond_5

    .line 772
    invoke-virtual {v1, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 776
    :goto_0
    iget v8, v7, Landroid/graphics/Point;->y:I

    iput v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 777
    iget v8, v7, Landroid/graphics/Point;->x:I

    iput v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 779
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 780
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 785
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnFormatChangeListener(I)V

    .line 787
    iget-boolean v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v8, :cond_2

    .line 789
    iput-boolean v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 790
    iget-object v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v8}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceInitialized()V

    .line 791
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetMultitouchMode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/adobe/air/AIRWindowSurfaceView;->setMultitouchMode(I)V

    .line 793
    :cond_2
    iget-boolean v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-eqz v8, :cond_4

    .line 795
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 796
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 797
    .local v4, "orientation":I
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-ne v4, v8, :cond_7

    .line 799
    if-eq v4, v5, :cond_3

    const/4 v8, 0x2

    if-ne v4, v8, :cond_8

    :cond_3
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    if-ge p4, v8, :cond_8

    .line 803
    if-nez p4, :cond_6

    .line 858
    .end local v0    # "cfg":Landroid/content/res/Configuration;
    .end local v4    # "orientation":I
    :cond_4
    :goto_1
    return-void

    .line 774
    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 804
    .restart local v0    # "cfg":Landroid/content/res/Configuration;
    .restart local v4    # "orientation":I
    :cond_6
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int v2, v8, p4

    .line 805
    .local v2, "keyboardHeight":I
    invoke-direct {p0, v4, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativePerformWindowPanning(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 807
    iput-boolean v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    goto :goto_1

    .line 824
    .end local v2    # "keyboardHeight":I
    :cond_7
    invoke-virtual {p0, v9}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(Z)V

    .line 825
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 826
    iput-boolean v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 829
    :cond_8
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-eq v8, v4, :cond_a

    .line 831
    .local v5, "orientationChanged":Z
    :goto_2
    iput v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 832
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 833
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 837
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v10, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p0, v8, v10, v5}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnSizeChangedListener(IIZ)V

    .line 841
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v6

    .line 842
    .local v6, "orientationManager":Lcom/adobe/air/OrientationManager;
    iget-boolean v8, v6, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    if-eqz v8, :cond_9

    .line 844
    iget v8, v6, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v10, v6, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {v6, v8, v10}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 845
    iput-boolean v9, v6, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    .line 850
    :cond_9
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeForceReDraw()V

    .line 855
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    goto :goto_1

    .end local v5    # "orientationChanged":Z
    .end local v6    # "orientationManager":Lcom/adobe/air/OrientationManager;
    :cond_a
    move v5, v9

    .line 829
    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 720
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SAMSUNG"

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSurfaceCreated()V

    .line 730
    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 884
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    invoke-interface {v0}, Lcom/adobe/air/FlashEGL;->DestroyWindowSurface()Z

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceDestroyed()V

    .line 886
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 887
    return-void
.end method

.method public updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V
    .locals 1
    .param p1, "stageText"    # Lcom/adobe/air/AndroidStageText;
    .param p2, "focused"    # Z

    .prologue
    .line 990
    if-eqz p2, :cond_1

    .line 991
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-ne v0, p1, :cond_0

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    goto :goto_0
.end method

.method public updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V
    .locals 1
    .param p1, "webView"    # Lcom/adobe/air/AndroidWebView;
    .param p2, "focused"    # Z

    .prologue
    .line 946
    if-eqz p2, :cond_1

    .line 947
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-ne v0, p1, :cond_0

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    goto :goto_0
.end method
