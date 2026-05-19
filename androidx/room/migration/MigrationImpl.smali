.class final Landroidx/room/migration/MigrationImpl;
.super Landroidx/room/migration/Migration;
.source ""


# instance fields
.field private final migrateCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "migrateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    iput-object p3, p0, Landroidx/room/migration/MigrationImpl;->migrateCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getMigrateCallback()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/MigrationImpl;->migrateCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 3

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/migration/MigrationImpl;->migrateCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
