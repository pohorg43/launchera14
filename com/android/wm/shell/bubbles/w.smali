.class public final synthetic Lcom/android/wm/shell/bubbles/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/os/UserHandle;

.field public final synthetic d:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/w;->a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/w;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/w;->c:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/w;->d:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/w;->a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/w;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/w;->c:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/w;->d:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->b(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
