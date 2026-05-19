.class public final Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/pantanal/log/printer/PrinterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private logClassName:Ljava/lang/String;

.field private logLevel:I

.field private logMsgSuffix:Ljava/lang/String;

.field private final logTagBlackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logTagPrefix:Ljava/lang/String;

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

.field private printFileNameAndLineNumber:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logLevel:I

    const-string v1, ""

    iput-object v1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagPrefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagSecondaryPrefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logMsgSuffix:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagBlackSet:Ljava/util/Set;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagWhiteSet:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->printFileNameAndLineNumber:Z

    iput-object v1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/oplus/pantanal/log/printer/PrinterConfig;
    .registers 2

    new-instance v0, Lcom/oplus/pantanal/log/printer/PrinterConfig;

    invoke-direct {v0, p0}, Lcom/oplus/pantanal/log/printer/PrinterConfig;-><init>(Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;)V

    return-object v0
.end method

.method public final getLogClassName$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogLevel$OLog_release()I
    .registers 1

    iget p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logLevel:I

    return p0
.end method

.method public final getLogMsgSuffix$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logMsgSuffix:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagBlackSet:Ljava/util/Set;

    return-object p0
.end method

.method public final getLogTagPrefix$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogTagSecondaryPrefix$OLog_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagSecondaryPrefix:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagWhiteSet:Ljava/util/Set;

    return-object p0
.end method

.method public final getPrintFileNameAndLineNumber$OLog_release()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->printFileNameAndLineNumber:Z

    return p0
.end method

.method public final logClassName(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 3

    const-string v0, "logClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final logFloorLevel(I)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logLevel:I

    return-object p0
.end method

.method public final logMsgSuffix(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 3

    const-string v0, "logMsgSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logMsgSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public final logTagBlackSet(Ljava/util/Set;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;"
        }
    .end annotation

    const-string v0, "tagSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagBlackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final logTagPrefix(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 3

    const-string v0, "logTagPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final logTagSecondaryPrefix(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 3

    const-string v0, "logTagSecondaryPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagSecondaryPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final logTagWhiteSet(Ljava/util/Set;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;"
        }
    .end annotation

    const-string v0, "tagSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagWhiteSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final printFileNameAndLineNumber(Z)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->printFileNameAndLineNumber:Z

    return-object p0
.end method

.method public final setLogClassName$OLog_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logClassName:Ljava/lang/String;

    return-void
.end method

.method public final setLogLevel$OLog_release(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logLevel:I

    return-void
.end method

.method public final setLogMsgSuffix$OLog_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logMsgSuffix:Ljava/lang/String;

    return-void
.end method

.method public final setLogTagPrefix$OLog_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagPrefix:Ljava/lang/String;

    return-void
.end method

.method public final setLogTagSecondaryPrefix$OLog_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagSecondaryPrefix:Ljava/lang/String;

    return-void
.end method

.method public final setPrintFileNameAndLineNumber$OLog_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->printFileNameAndLineNumber:Z

    return-void
.end method
