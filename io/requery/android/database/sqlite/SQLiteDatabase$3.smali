.class public Lio/requery/android/database/sqlite/SQLiteDatabase$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field public final synthetic val$supportCancellationSignal:Landroidx/core/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/core/os/CancellationSignal;)V
    .registers 3

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase$3;->this$0:Lio/requery/android/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase$3;->val$supportCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase$3;->val$supportCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->cancel()V

    return-void
.end method
