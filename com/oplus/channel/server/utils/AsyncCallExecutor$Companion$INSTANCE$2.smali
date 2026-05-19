.class final Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/utils/AsyncCallExecutor;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/channel/server/utils/AsyncCallExecutor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0006\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/AsyncCallExecutor;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;->INSTANCE:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/channel/server/utils/AsyncCallExecutor;
    .registers 1

    new-instance p0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;->invoke()Lcom/oplus/channel/server/utils/AsyncCallExecutor;

    move-result-object p0

    return-object p0
.end method
