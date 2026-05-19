.class public final Lio/branch/search/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/g0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/g0$a;


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final b:Lio/branch/search/h0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/g0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/g0;->Companion:Lio/branch/search/g0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lio/branch/search/h0;)V
    .registers 4

    const-string v0, "crashHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/g0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lio/branch/search/g0;->b:Lio/branch/search/h0;

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/g0;->Companion:Lio/branch/search/g0$a;

    invoke-virtual {v0, p0}, Lio/branch/search/g0$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->b()Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "it.analytics.getSessionAnalyticsEnabled()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    :try_start_4
    invoke-virtual {p0}, Lio/branch/search/g0;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/branch/search/g0;->b:Lio/branch/search/h0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/branch/search/h0;->a(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    goto :goto_2a

    :catchall_14
    move-exception v0

    :try_start_15
    const-string v1, "BranchUncaughtExHandler"

    const-string v2, "Processing exception failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    iget-object p0, p0, Lio/branch/search/g0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_31

    goto :goto_2e

    :catchall_21
    move-exception v0

    iget-object p0, p0, Lio/branch/search/g0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_29

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_29
    throw v0

    :cond_2a
    :goto_2a
    iget-object p0, p0, Lio/branch/search/g0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_31

    :goto_2e
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_31
    return-void
.end method
