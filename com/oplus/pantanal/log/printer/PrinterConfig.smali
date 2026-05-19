.class public final Lcom/oplus/pantanal/log/printer/PrinterConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    }
.end annotation


# instance fields
.field private builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

.field private encryptType:I

.field private final logClassName:Ljava/lang/String;

.field private logFloorLevel:I

.field private volatile logMsgSuffix:Ljava/lang/String;

.field private final logTagBlackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logTagPrefix:Ljava/lang/String;

.field private logTagSecondaryPrefix:Ljava/lang/String;

.field private final logTagWhiteSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final printFileNameAndLineNumber:Z


# direct methods
.method public constructor <init>(Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogLevel$OLog_release()I

    move-result p1

    iput p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logFloorLevel:I

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogTagPrefix$OLog_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagPrefix:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogTagSecondaryPrefix$OLog_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagSecondaryPrefix:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogMsgSuffix$OLog_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logMsgSuffix:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogTagWhiteSet$OLog_release()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagWhiteSet:Ljava/util/Set;

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogTagBlackSet$OLog_release()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagBlackSet:Ljava/util/Set;

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getPrintFileNameAndLineNumber$OLog_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->printFileNameAndLineNumber:Z

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->getLogClassName$OLog_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logClassName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/pantanal/log/printer/PrinterConfig;Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;ILjava/lang/Object;)Lcom/oplus/pantanal/log/printer/PrinterConfig;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->copy(Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;)Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addLogTagToBlackSet(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagBlackSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addLogTagToWhiteSet(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagWhiteSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final component1()Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    return-object p0
.end method

.method public final copy(Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;)Lcom/oplus/pantanal/log/printer/PrinterConfig;
    .registers 2

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;

    invoke-direct {p0, p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig;-><init>(Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/pantanal/log/printer/PrinterConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/pantanal/log/printer/PrinterConfig;

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    iget-object p1, p1, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBuilder()Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    return-object p0
.end method

.method public final getEncryptType$OLog_release()I
    .registers 1

    iget p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->encryptType:I

    return p0
.end method

.method public final getLogClassName$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogFloorLevel$OLog_release()I
    .registers 1

    iget p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logFloorLevel:I

    return p0
.end method

.method public final getLogMsgSuffix$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logMsgSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogTagBlackSet$OLog_release()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagBlackSet:Ljava/util/Set;

    return-object p0
.end method

.method public final getLogTagPrefix$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogTagSecondaryPrefix$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagSecondaryPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogTagWhiteSet$OLog_release()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagWhiteSet:Ljava/util/Set;

    return-object p0
.end method

.method public final getPrintFileNameAndLineNumber$OLog_release()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->printFileNameAndLineNumber:Z

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final removeTagFromBlackSet(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagBlackSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTagFromWhiteSet(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagWhiteSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetLogFloorLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logFloorLevel:I

    return-void
.end method

.method public final resetLogMsgSuffix(Ljava/lang/String;)V
    .registers 3

    const-string v0, "logMsgSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logMsgSuffix:Ljava/lang/String;

    return-void
.end method

.method public final resetLogTagSecondaryPrefix(Ljava/lang/String;)V
    .registers 3

    const-string v0, "logTagSecondaryPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagSecondaryPrefix:Ljava/lang/String;

    return-void
.end method

.method public final setBuilder(Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    return-void
.end method

.method public final setEncryptType$OLog_release(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->encryptType:I

    return-void
.end method

.method public final setLogFloorLevel$OLog_release(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logFloorLevel:I

    return-void
.end method

.method public final setLogMsgSuffix$OLog_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logMsgSuffix:Ljava/lang/String;

    return-void
.end method

.method public final setLogTagSecondaryPrefix$OLog_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->logTagSecondaryPrefix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig;->builder:Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrinterConfig(builder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
