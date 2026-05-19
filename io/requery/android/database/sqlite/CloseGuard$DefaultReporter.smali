.class public final Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/requery/android/database/sqlite/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultReporter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/requery/android/database/sqlite/CloseGuard$1;)V
    .registers 2

    invoke-direct {p0}, Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string p0, "SQLite"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
