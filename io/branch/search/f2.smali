.class public interface abstract Lio/branch/search/f2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/f2$d;,
        Lio/branch/search/f2$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/f2<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lio/branch/search/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/f2<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Lio/branch/search/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/f2<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/f2$a;

    invoke-direct {v0}, Lio/branch/search/f2$a;-><init>()V

    sput-object v0, Lio/branch/search/f2;->a:Lio/branch/search/f2;

    new-instance v0, Lio/branch/search/f2$b;

    invoke-direct {v0}, Lio/branch/search/f2$b;-><init>()V

    sput-object v0, Lio/branch/search/f2;->b:Lio/branch/search/f2;

    new-instance v0, Lio/branch/search/f2$c;

    invoke-direct {v0}, Lio/branch/search/f2$c;-><init>()V

    sput-object v0, Lio/branch/search/f2;->c:Lio/branch/search/f2;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
    .param p1  # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Ljava/lang/Object;
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TR;"
        }
    .end annotation
.end method
