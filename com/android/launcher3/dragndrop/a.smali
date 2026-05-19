.class public final synthetic Lcom/android/launcher3/dragndrop/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/a;->a:Lcom/android/launcher3/dragndrop/AddItemActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/a;->a:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->j(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
