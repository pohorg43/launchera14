.class Lcom/android/launcher3/util/ViewPool$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/ViewPool;->initPool(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/util/ViewPool;

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$inflater:Landroid/view/LayoutInflater;

.field public final synthetic val$initialSize:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/util/ViewPool$1;->this$0:Lcom/android/launcher3/util/ViewPool;

    iput p2, p0, Lcom/android/launcher3/util/ViewPool$1;->val$initialSize:I

    iput-object p3, p0, Lcom/android/launcher3/util/ViewPool$1;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/launcher3/util/ViewPool$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/ViewPool$1;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ViewPool$1;->lambda$run$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/ViewPool$1;->this$0:Lcom/android/launcher3/util/ViewPool;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ViewPool;->access$200(Lcom/android/launcher3/util/ViewPool;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/launcher3/util/ViewPool$1;->val$initialSize:I

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool$1;->this$0:Lcom/android/launcher3/util/ViewPool;

    invoke-static {v1}, Lcom/android/launcher3/util/ViewPool;->access$000(Lcom/android/launcher3/util/ViewPool;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    const-wide/16 v1, 0x8

    const-string v3, "inflateNewView"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_15
    iget-object v3, p0, Lcom/android/launcher3/util/ViewPool$1;->this$0:Lcom/android/launcher3/util/ViewPool;

    iget-object v4, p0, Lcom/android/launcher3/util/ViewPool$1;->val$inflater:Landroid/view/LayoutInflater;

    invoke-static {v3, v4}, Lcom/android/launcher3/util/ViewPool;->access$100(Lcom/android/launcher3/util/ViewPool;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/util/ViewPool$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher3/util/r;

    invoke-direct {v5, p0, v3}, Lcom/android/launcher3/util/r;-><init>(Lcom/android/launcher3/util/ViewPool$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_28

    goto :goto_34

    :catch_28
    move-exception v3

    const-string v4, "inflateNewView An exception occurs"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ViewPool"

    invoke-static {v3, v4, v5}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_34
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    return-void
.end method
