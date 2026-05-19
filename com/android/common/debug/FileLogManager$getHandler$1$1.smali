.class public final Lcom/android/common/debug/FileLogManager$getHandler$1$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/debug/FileLogManager;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    const-string/jumbo p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/debug/FileLogManager;->INSTANCE:Lcom/android/common/debug/FileLogManager;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1}, Lcom/android/common/debug/FileLogManager;->access$processFileLogHelper(Lcom/android/common/debug/FileLogManager;I)V

    return-void
.end method
