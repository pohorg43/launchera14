.class final Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/HandleMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mCaptionX:I

.field private mCaptionY:I

.field private mLayoutId:I

.field private mName:Ljava/lang/CharSequence;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mParent:Lcom/android/wm/shell/windowdecor/WindowDecoration;

.field private mShowWindowingPill:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mParent:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/wm/shell/windowdecor/HandleMenu;
    .registers 12

    new-instance v10, Lcom/android/wm/shell/windowdecor/HandleMenu;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mParent:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mLayoutId:I

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mCaptionX:I

    iget v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mCaptionY:I

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mName:Ljava/lang/CharSequence;

    iget-boolean v9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mShowWindowingPill:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/windowdecor/HandleMenu;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    return-object v10
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setAppName(Ljava/lang/CharSequence;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCaptionPosition(II)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 3

    iput p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mCaptionX:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mCaptionY:I

    return-object p0
.end method

.method public setLayoutId(I)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mLayoutId:I

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public setWindowingButtonsVisible(Z)Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mShowWindowingPill:Z

    return-object p0
.end method
