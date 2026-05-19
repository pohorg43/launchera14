.class public Lcom/coui/appcompat/checkbox/COUICheckBox;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;,
        Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;,
        Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;
    }
.end annotation


# static fields
.field public static final i:Z

.field public static final j:[I

.field public static final k:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Z

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

.field public h:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    const/4 v0, 0x3

    const-string v3, "COUICheckBox"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->i:Z

    new-array v0, v2, [I

    sget v3, Lcom/support/appcompat/R$attr;->coui_state_allSelect:I

    aput v3, v0, v1

    sput-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->j:[I

    new-array v0, v2, [I

    sget v2, Lcom/support/appcompat/R$attr;->coui_state_partSelect:I

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->k:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiCheckBoxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_16

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_16
    sget-object v0, Lcom/support/appcompat/R$styleable;->COUICheckBox:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiAsyncLoad:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    sget v3, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sget v6, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiCheckBoxState:I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    sget-boolean v7, Lcom/coui/appcompat/checkbox/COUICheckBox;->i:Z

    if-eqz v7, :cond_5f

    const-string v7, "asyncLoad = "

    const-string v8, " drawable check = "

    invoke-static {v7, v0, v8}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/support/appcompat/R$drawable;->coui_checkbox_state:I

    if-ne v5, v8, :cond_44

    move v8, v2

    goto :goto_45

    :cond_44
    move v8, v1

    :goto_45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " thread check = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_59

    move v8, v2

    goto :goto_5a

    :cond_59
    move v8, v1

    :goto_5a
    const-string v9, "COUICheckBox"

    invoke-static {v7, v8, v9}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_5f
    if-eqz v0, :cond_70

    sget v0, Lcom/support/appcompat/R$drawable;->coui_checkbox_state:I

    if-ne v5, v0, :cond_70

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v0, v5, :cond_70

    goto :goto_71

    :cond_70
    move v2, v1

    :goto_71
    if-nez v2, :cond_82

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_98

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_98

    :cond_82
    new-instance v0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;

    invoke-direct {v0, p0, p2, p3}, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;-><init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/util/AttributeSet;I)V

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->a(I)Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->c(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/checkbox/COUICheckBox;->b(I)V

    :cond_98
    :goto_98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_a0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_a0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    sget-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->k:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_16

    :cond_e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->j:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_16
    :goto_16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    move p1, v0

    goto :goto_2e

    :cond_b
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_on_normal:I

    goto :goto_2e

    :cond_14
    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_on_disabled:I

    goto :goto_2e

    :cond_17
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_20

    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_part_check_on_normal:I

    goto :goto_2e

    :cond_20
    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_part_check_on_disabled:I

    goto :goto_2e

    :cond_23
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_off_normal:I

    goto :goto_2e

    :cond_2c
    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_off_disabled:I

    :goto_2e
    if-eq p1, v0, :cond_33

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(I)V

    :cond_33
    return-void
.end method

.method public drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_13
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    add-int/2addr v0, p0

    :cond_13
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    add-int/2addr v0, p0

    :cond_13
    return v0
.end method

.method public getState()I
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    return p0
.end method

.method public isChecked()Z
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v1

    if-ne v1, v0, :cond_11

    sget-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->k:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_11
    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->j:[I

    invoke-static {p1, p0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_1d
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Landroid/widget/Button;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eq v1, v4, :cond_26

    const/16 v4, 0x50

    if-eq v1, v4, :cond_20

    move v1, v5

    goto :goto_2d

    :cond_20
    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_2d

    :cond_26
    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_2d
    add-int/2addr v2, v1

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v4

    sub-int v5, v4, v3

    :cond_3a
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v3

    :cond_44
    invoke-virtual {v0, v5, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_53

    invoke-virtual {p0, v5, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_53
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto :goto_1a

    :cond_16
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :goto_1a
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_19

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_1d

    :cond_19
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_1d
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;->a:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;->a:I

    return-object v1
.end method

.method public performClick()Z
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->toggle()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setButtonDrawable(I)V
    .registers 4

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->c:I

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->c:I

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_34

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_34
    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_b

    :cond_7
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_b
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->g:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

    return-void
.end method

.method public setState(I)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->b:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->b(I)V

    return-void

    :cond_b
    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    if-eq v0, p1, :cond_5c

    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->e:Z

    if-eqz p1, :cond_19

    return-void

    :cond_19
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->e:Z

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->g:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

    if-eqz v0, :cond_25

    iget v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    invoke-interface {v0, p0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;->a(Lcom/coui/appcompat/checkbox/COUICheckBox;I)V

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->e:Z

    invoke-virtual {p0}, Landroid/widget/Button;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setImportantForAccessibility(I)V

    :cond_31
    iget-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->h:Landroid/view/accessibility/AccessibilityManager;

    if-nez p1, :cond_43

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->h:Landroid/view/accessibility/AccessibilityManager;

    :cond_43
    iget-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_5c
    return-void
.end method

.method public toggle()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->f:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
