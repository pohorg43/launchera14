.class public Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/requery/android/database/sqlite/SQLiteDatabase$Function$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyResult"
.end annotation


# instance fields
.field public contextPtr:J

.field public isSet:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/requery/android/database/sqlite/SQLiteFunction$1;)V
    .registers 2

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkSet()V
    .registers 2

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Result is already set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNull()V
    .registers 3

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->checkSet()V

    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->contextPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/sqlite/SQLiteFunction;->nativeSetResultNull(J)V

    return-void
.end method
