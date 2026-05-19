.class final Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ContextExtKt;->asyncUnbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $applicationContext:Landroid/content/Context;

.field public final synthetic $conn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3

    iput-object p1, p0, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;->$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;->$conn:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;->$applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;->$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    return-void
.end method
