.class public Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;
    }
.end annotation


# static fields
.field public static final E:I

.field public static final F:I

.field public static final G:I


# instance fields
.field public A:Z

.field public B:Landroid/content/res/Configuration;

.field public C:I

.field public D:Landroid/content/ComponentCallbacks;

.field public a:Landroidx/appcompat/app/AlertDialog;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:[Ljava/lang/CharSequence;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

.field public p:Z

.field public q:Landroid/view/View;

.field public r:I

.field public s:Z

.field public t:Landroid/view/View;

.field public u:Landroid/graphics/Point;

.field public v:Landroid/graphics/Point;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->E:I

    sget v0, Lcom/support/appcompat/R$style;->AlertDialogBuildStyle:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->F:I

    sget v0, Lcom/support/appcompat/R$style;->Animation_COUI_Dialog_Alpha:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->G:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/support/appcompat/R$style;->COUIAlertDialog_BottomWarning:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->r:I

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->t:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->u:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->v:Landroid/graphics/Point;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->w:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->y:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->A:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->C:I

    new-instance p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->D:Landroid/content/ComponentCallbacks;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Point;)Landroidx/appcompat/app/AlertDialog;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->f(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->t:Landroid/view/View;

    if-nez v0, :cond_20

    if-eqz p2, :cond_2a

    :cond_20
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->u:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    :cond_2a
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .registers 6

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder:[I

    sget v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->E:I

    sget v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->F:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_windowAnimStyle:I

    sget v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->G:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_contentMaxWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_contentMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_customContentLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_isNeedToAdaptMessageAndList:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_isTinyDialog:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_hasLoading:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_isAssignMentLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_isForceCenterStyleInLargeScreen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->A:Z

    sget p0, Lcom/support/appcompat/R$styleable;->COUIAlertDialogBuilder_isCustomStyle:I

    invoke-virtual {v0, p0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->t:Landroid/view/View;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->u:Landroid/graphics/Point;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public create()Landroidx/appcompat/app/AlertDialog;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f:I

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-nez v3, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    iput-boolean v3, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->e:Z

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    if-nez v3, :cond_29

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    if-nez v3, :cond_29

    move v3, v1

    goto :goto_2a

    :cond_29
    move v3, v2

    :goto_2a
    iput-boolean v3, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->f:Z

    :cond_2c
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Z

    if-eqz v0, :cond_31

    goto :goto_66

    :cond_31
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3a

    array-length v0, v0

    if-lez v0, :cond_3a

    move v0, v1

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    if-eqz v0, :cond_66

    new-instance v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-nez v3, :cond_4d

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-nez v3, :cond_4d

    move v5, v1

    goto :goto_4e

    :cond_4d
    move v5, v2

    :goto_4e
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    if-nez v3, :cond_58

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    if-nez v3, :cond_58

    move v6, v1

    goto :goto_59

    :cond_58
    move v6, v2

    :goto_59
    iget-object v7, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:[Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_66
    :goto_66
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->t:Landroid/view/View;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->u:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->v:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    const/16 v5, 0x33

    invoke-virtual {v0, v5}, Landroid/view/Window;->setGravity(I)V

    sget v5, Lcom/support/appcompat/R$style;->Animation_COUI_PopupListWindow:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    new-instance v5, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;-><init>(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;

    invoke-direct {v1, v0, v5}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;-><init>(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c6

    :cond_b2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->B:Landroid/content/res/Configuration;

    if-eqz v1, :cond_b7

    goto :goto_c3

    :cond_b7
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :goto_c3
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->r(Landroid/content/res/Configuration;)V

    :goto_c6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;

    invoke-direct {v3, p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/Window;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {v3, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->r:I

    if-lez v3, :cond_ea

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_ea
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()Z

    move-result v3

    if-eqz v3, :cond_f1

    goto :goto_f2

    :cond_f1
    const/4 v2, -0x1

    :goto_f2
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public final d(Landroid/content/res/Configuration;)Z
    .registers 7

    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance v2, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p1, p1

    invoke-direct {v2, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->fromWidthAndHeight(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object v0

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    sget-object v1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    new-instance v4, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v4, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v1, v4}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p1

    sget-object v4, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p1, v4, :cond_32

    move p1, v2

    goto :goto_33

    :cond_32
    move p1, v3

    :goto_33
    if-eqz p1, :cond_49

    new-instance p1, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {p1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v1, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_44

    move p0, v2

    goto :goto_45

    :cond_44
    move p0, v3

    :goto_45
    if-eqz p0, :cond_49

    move p0, v2

    goto :goto_4a

    :cond_49
    move p0, v3

    :goto_4a
    if-nez v0, :cond_50

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    :cond_50
    :goto_50
    return v2
.end method

.method public e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Z

    instance-of v0, p1, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    :cond_10
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public g(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public k(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public l(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public o(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public final q(Landroid/view/View;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final r(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(Landroid/content/res/Configuration;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->A:Z

    if-eqz p1, :cond_e

    move p1, v0

    goto :goto_f

    :cond_e
    move p1, v1

    :goto_f
    if-eqz p1, :cond_2a

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->z:Z

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->G:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_42

    :cond_2a
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->z:Z

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_42
    return-void
.end method

.method public s()V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_c2

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-nez v1, :cond_c2

    sget v1, Lcom/support/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c2

    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-nez v4, :cond_21

    goto/16 :goto_c2

    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_no_message_alert_dialog_title_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/support/appcompat/R$dimen;->coui_no_message_alert_dialog_title_margin_bottom:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/support/appcompat/R$id;->alert_title_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b0

    instance-of v4, v1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-nez v4, :cond_57

    goto :goto_b0

    :cond_57
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_title_scroll_min_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    check-cast v1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMinHeight(I)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->setFillViewport(Z)V

    sget v4, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-nez v5, :cond_92

    goto :goto_b0

    :cond_92
    check-cast v4, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-nez v5, :cond_a9

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_parent_panel_min_height_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedMinHeight(I)V

    :cond_a9
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedReMeasureLayoutId(I)V

    :cond_b0
    :goto_b0
    sget v1, Lcom/support/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b9

    goto :goto_c2

    :cond_b9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c2
    :goto_c2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_c8

    goto :goto_12d

    :cond_c8
    sget v4, Lcom/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    if-nez v5, :cond_12d

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-nez v5, :cond_12d

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-eqz v5, :cond_12d

    if-eqz v0, :cond_12d

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-eqz v5, :cond_fd

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:Z

    if-eqz v5, :cond_fd

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_scroll_padding_bottom_message_has_title_in_assignment:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0, v6, v1, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_fd
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v5, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    if-nez v5, :cond_12d

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:Z

    if-nez v5, :cond_12d

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedSetPaddingLayoutId(I)V

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_parent_panel_min_height_reset_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedMinHeightResetPadding(I)V

    :cond_12d
    :goto_12d
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    if-eqz v4, :cond_19f

    sget v4, Lcom/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_144

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_144
    sget v4, Lcom/support/appcompat/R$id;->custom:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_151

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_151
    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-nez v4, :cond_19f

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-nez v4, :cond_19f

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-nez v4, :cond_16c

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_customstyle_padding_top_withouttitle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_180

    :cond_16c
    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:Z

    if-nez v4, :cond_17f

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_customer_layout_imageview_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_180

    :cond_17f
    move v4, v1

    :goto_180
    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:Z

    if-eqz v5, :cond_193

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_customer_layout_imageview_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    goto :goto_194

    :cond_193
    move v5, v1

    :goto_194
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_19f
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v4, Lcom/support/appcompat/R$id;->listPanel:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    const/4 v7, 0x0

    if-eqz v6, :cond_1b7

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    goto :goto_1b8

    :cond_1b7
    move-object v6, v7

    :goto_1b8
    if-eqz v6, :cond_1bd

    invoke-virtual {v6, v1}, Landroid/view/View;->setScrollIndicators(I)V

    :cond_1bd
    iget-boolean v8, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-eqz v8, :cond_1c7

    if-eqz v5, :cond_1c7

    if-eqz v6, :cond_1c7

    move v8, v3

    goto :goto_1c8

    :cond_1c7
    move v8, v1

    :goto_1c8
    if-eqz v8, :cond_1e9

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1e1

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1e1

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e1
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e9
    sget v2, Lcom/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_24a

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScrollIndicators(I)V

    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g:Z

    if-eqz v6, :cond_202

    if-eqz v8, :cond_202

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q(Landroid/view/View;I)V

    invoke-virtual {p0, v5, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q(Landroid/view/View;I)V

    :cond_202
    instance-of v5, v2, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    if-eqz v5, :cond_24a

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/dialog/AppFeatureUtil;->a(Landroid/content/Context;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Z

    if-eqz v6, :cond_228

    if-nez v5, :cond_228

    move-object v5, v2

    check-cast v5, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_content_max_height_with_adapter:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V

    :cond_228
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v0, v5, :cond_24a

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-eqz v0, :cond_24a

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-nez v0, :cond_23f

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    if-nez v0, :cond_23f

    goto :goto_24a

    :cond_23f
    move-object v0, v2

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    new-instance v5, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;

    invoke-direct {v5, p0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setConfigChangeListener(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;)V

    :cond_24a
    :goto_24a
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    if-gtz v2, :cond_255

    goto :goto_272

    :cond_255
    sget v2, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v2, :cond_267

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxWidth(I)V

    goto :goto_272

    :cond_267
    instance-of v2, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    if-eqz v2, :cond_272

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->setMaxWidth(I)V

    :cond_272
    :goto_272
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e:I

    if-gtz v2, :cond_27d

    goto :goto_29a

    :cond_27d
    sget v2, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v2, :cond_28f

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxHeight(I)V

    goto :goto_29a

    :cond_28f
    instance-of v2, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    if-eqz v2, :cond_29a

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->setMaxHeight(I)V

    :cond_29a
    :goto_29a
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_2af

    array-length v5, v5

    if-lez v5, :cond_2af

    move v5, v3

    goto :goto_2b0

    :cond_2af
    move v5, v1

    :goto_2b0
    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j:Z

    if-nez v6, :cond_2c5

    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k:Z

    if-nez v6, :cond_2c5

    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    if-nez v6, :cond_2c5

    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Z

    if-nez v6, :cond_2c5

    if-eqz v5, :cond_2c3

    goto :goto_2c5

    :cond_2c3
    move v5, v1

    goto :goto_2c6

    :cond_2c5
    :goto_2c5
    move v5, v3

    :goto_2c6
    iget-boolean v6, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    if-eqz v6, :cond_2ed

    if-eqz v2, :cond_3c5

    if-nez v5, :cond_3c5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_tiny_dialog_btn_bar_padding_vertical:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v0, p0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3c5

    :cond_2ed
    instance-of v6, v2, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    if-eqz v6, :cond_3c5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_2fb

    goto/16 :goto_3c5

    :cond_2fb
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object v6, v2

    check-cast v6, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v6}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v8

    iget v9, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->C:I

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setRecommendButtonId(I)V

    if-ne v8, v3, :cond_311

    move v9, v3

    goto :goto_312

    :cond_311
    move v9, v1

    :goto_312
    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    if-eqz v4, :cond_320

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    :cond_320
    if-eqz v0, :cond_326

    if-eqz v7, :cond_326

    move v0, v3

    goto :goto_327

    :cond_326
    move v0, v1

    :goto_327
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_3a0

    if-lt v8, v3, :cond_3a0

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    if-nez v3, :cond_355

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-eqz v3, :cond_33a

    goto :goto_355

    :cond_33a
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_with_button_min_height_hor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_36c

    :cond_355
    :goto_355
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_with_button_min_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :goto_36c
    if-eqz v0, :cond_3a0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v0, :cond_3a0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_3a0
    if-eqz v9, :cond_3c0

    if-nez v5, :cond_3c0

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->x:Z

    if-nez v0, :cond_3ac

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m:Z

    if-eqz v0, :cond_3c0

    :cond_3ac
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$dimen;->coui_free_alert_dialog_single_btn_padding_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButVerPadding(I)V

    invoke-virtual {v6, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButPaddingOffset(I)V

    :cond_3c0
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->w:Z

    invoke-virtual {v6, p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setDynamicLayout(Z)V

    :cond_3c5
    :goto_3c5
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l:Z

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setView(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q:Landroid/view/View;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 4

    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->alert_title_scroll_view:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-nez v1, :cond_f

    goto :goto_17

    :cond_f
    new-instance v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;

    invoke-direct {v2, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :goto_17
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s()V

    return-object v0
.end method
