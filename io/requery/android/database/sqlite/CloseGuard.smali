.class public final Lio/requery/android/database/sqlite/CloseGuard;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;,
        Lio/requery/android/database/sqlite/CloseGuard$Reporter;
    }
.end annotation


# static fields
.field public static volatile ENABLED:Z

.field public static final NOOP:Lio/requery/android/database/sqlite/CloseGuard;

.field public static volatile REPORTER:Lio/requery/android/database/sqlite/CloseGuard$Reporter;


# instance fields
.field public allocationSite:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/requery/android/database/sqlite/CloseGuard;

    invoke-direct {v0}, Lio/requery/android/database/sqlite/CloseGuard;-><init>()V

    sput-object v0, Lio/requery/android/database/sqlite/CloseGuard;->NOOP:Lio/requery/android/database/sqlite/CloseGuard;

    const/4 v0, 0x1

    sput-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    new-instance v0, Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;-><init>(Lio/requery/android/database/sqlite/CloseGuard$1;)V

    sput-object v0, Lio/requery/android/database/sqlite/CloseGuard;->REPORTER:Lio/requery/android/database/sqlite/CloseGuard$Reporter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lio/requery/android/database/sqlite/CloseGuard;
    .registers 1

    sget-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_7

    sget-object v0, Lio/requery/android/database/sqlite/CloseGuard;->NOOP:Lio/requery/android/database/sqlite/CloseGuard;

    return-object v0

    :cond_7
    new-instance v0, Lio/requery/android/database/sqlite/CloseGuard;

    invoke-direct {v0}, Lio/requery/android/database/sqlite/CloseGuard;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 4

    const-string v0, "closer == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/requery/android/database/sqlite/CloseGuard;->NOOP:Lio/requery/android/database/sqlite/CloseGuard;

    if-eq p0, v0, :cond_1d

    sget-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_e

    goto :goto_1d

    :cond_e
    const-string v0, "Explicit termination method \'"

    const-string v1, "\' not called"

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public warnIfOpen()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-eqz v0, :cond_12

    sget-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    sget-object v0, Lio/requery/android/database/sqlite/CloseGuard;->REPORTER:Lio/requery/android/database/sqlite/CloseGuard$Reporter;

    iget-object p0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    const-string v1, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

    invoke-interface {v0, v1, p0}, Lio/requery/android/database/sqlite/CloseGuard$Reporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_12
    return-void
.end method
