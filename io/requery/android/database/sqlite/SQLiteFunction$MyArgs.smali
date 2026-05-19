.class public Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/requery/android/database/sqlite/SQLiteDatabase$Function$Args;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyArgs"
.end annotation


# instance fields
.field public argsCount:I

.field public argsPtr:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/requery/android/database/sqlite/SQLiteFunction$1;)V
    .registers 2

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;-><init>()V

    return-void
.end method
