.class public Lio/branch/search/y3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/l2;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/y3;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1  # Lio/requery/android/database/sqlite/SQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/y3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lio/branch/search/y3;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/w3;

    invoke-interface {v0}, Lio/branch/search/w3;->a()Lio/branch/search/t3;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/y3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-boolean v1, v0, Lio/branch/search/t3;->b:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lio/branch/search/t3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v0}, Lio/branch/search/t3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/y3;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/w3;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1, v2}, Lio/branch/search/w3;->a(Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Lio/branch/search/t3;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p1, v1, v3, v2, v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_36

    :cond_54
    return-void
.end method
