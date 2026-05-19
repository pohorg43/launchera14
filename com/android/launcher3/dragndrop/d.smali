.class public final synthetic Lcom/android/launcher3/dragndrop/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/dragndrop/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/d;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget v0, p0, Lcom/android/launcher3/dragndrop/d;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/d;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/AddItemActivity;->m(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :goto_d
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/d;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/AddItemActivity;->h(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
