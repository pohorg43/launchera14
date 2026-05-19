.class final synthetic Lcom/android/launcher3/taskbar/ImeStateManage$initState$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/ImeStateManage;->initState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/os/Bundle;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lcom/android/launcher3/taskbar/ImeStateManage;

    const/4 v1, 0x1

    const-string/jumbo v4, "onWindowStateChange"

    const-string/jumbo v5, "onWindowStateChange(Landroid/os/Bundle;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage$initState$1;->invoke(Landroid/os/Bundle;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Landroid/os/Bundle;)V
    .registers 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->access$onWindowStateChange(Lcom/android/launcher3/taskbar/ImeStateManage;Landroid/os/Bundle;)V

    return-void
.end method
