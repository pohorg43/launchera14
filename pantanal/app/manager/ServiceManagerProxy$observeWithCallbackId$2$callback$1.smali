.class final Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->$clazz:Ljava/lang/Class;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->invoke([B)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke([B)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->$clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lpantanal/app/manager/ServiceManagerProxy;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type T of pantanal.app.manager.ServiceManagerProxy.observeWithCallbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
