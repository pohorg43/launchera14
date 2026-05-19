.class public final synthetic Lh0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/FolderIcon;

.field public final synthetic c:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;I)V
    .registers 4

    iput p3, p0, Lh0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/b;->b:Lcom/android/launcher3/folder/FolderIcon;

    iput-object p2, p0, Lh0/b;->c:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lh0/b;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lh0/b;->b:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lh0/b;->c:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->f(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_e
    iget-object v0, p0, Lh0/b;->b:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lh0/b;->c:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->a(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
