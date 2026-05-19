.class final Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->processMessageInThread(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/utrace/hlog/PushData;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;->INSTANCE:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;->invoke(Lcom/oplus/utrace/hlog/PushData;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/utrace/hlog/PushData;)V
    .registers 5

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getUploaders$cp()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const/16 v0, 0x5b

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] processMessageInThread() traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is finished"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTrace.Sdk.HLogFiles"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
