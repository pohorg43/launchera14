.class final Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/manager/util/DispatchersUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lm7/j1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;-><init>()V

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;->invoke()Lm7/j1;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lm7/j1;
    .registers 1

    const-string p0, "panta_sdk_card_model"

    invoke-static {p0}, Lpantanal/app/manager/util/DispatchersUtil;->access$createSingleDispatcher(Ljava/lang/String;)Lm7/j1;

    move-result-object p0

    return-object p0
.end method
