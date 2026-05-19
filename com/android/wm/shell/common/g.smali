.class public final synthetic Lcom/android/wm/shell/common/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/g;->a:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    iput p2, p0, Lcom/android/wm/shell/common/g;->b:I

    iput-object p3, p0, Lcom/android/wm/shell/common/g;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/wm/shell/common/g;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/g;->a:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    iget v1, p0, Lcom/android/wm/shell/common/g;->b:I

    iget-object v2, p0, Lcom/android/wm/shell/common/g;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/android/wm/shell/common/g;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->f(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method
