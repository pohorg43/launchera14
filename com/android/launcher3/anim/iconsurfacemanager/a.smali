.class public final synthetic Lcom/android/launcher3/anim/iconsurfacemanager/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

.field public final synthetic c:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;I)V
    .registers 6

    iput p4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->b:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iput-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->c:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->b:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->c:Lcom/android/launcher3/views/FloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->d:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->b(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->b:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->c:Lcom/android/launcher3/views/FloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/a;->d:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->c(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
