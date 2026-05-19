.class final Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogConfigHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;

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

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v0, p0}, Lcom/oplus/utrace/utils/TraceUtil;->generateLogPrefix$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
