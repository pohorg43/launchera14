.class public final Landroidx/room/migration/MigrationKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final Migration(IILkotlin/jvm/functions/Function1;)Landroidx/room/migration/Migration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lh4/z;",
            ">;)",
            "Landroidx/room/migration/Migration;"
        }
    .end annotation

    const-string/jumbo v0, "migrate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/migration/MigrationImpl;

    invoke-direct {v0, p0, p1, p2}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
