.class public Lcom/oplus/zoom/zoommenu/SimpleModeControlView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private final BUTTON_HEIGHT:I

.field private final BUTTON_WIDTH:I

.field private mButton:Landroid/widget/ScrollView;

.field private mButtonContent:Landroid/widget/FrameLayout;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextView:Landroid/widget/TextView;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x5e

    iput p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->BUTTON_WIDTH:I

    const/16 p1, 0x96

    iput p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->BUTTON_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x5e

    iput p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->BUTTON_WIDTH:I

    const/16 p1, 0x96

    iput p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->BUTTON_HEIGHT:I

    return-void
.end method


# virtual methods
.method public getButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mButton:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public getButtonContent()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mButtonContent:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public initWindowParams(Lcom/oplus/zoom/common/ZoomPositionInfo;Landroid/content/Context;)V
    .registers 6

    sget v0, Lcom/android/wm/shell/R$id;->button_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mButton:Landroid/widget/ScrollView;

    sget v0, Lcom/android/wm/shell/R$id;->button_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mButtonContent:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/wm/shell/R$id;->button_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1040308

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/high16 v2, 0x40c00000  # 6.0f

    invoke-static {p2, v2}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string p1, "ZoomSimpleModeButton"

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
