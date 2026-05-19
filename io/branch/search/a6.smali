.class public interface abstract Lio/branch/search/a6;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "a6"

.field public static final b:Lio/branch/search/a6;

.field public static final c:Lio/branch/search/a6;

.field public static final d:Lio/branch/search/a6;

.field public static final e:Lio/branch/search/a6;

.field public static final f:Lio/branch/search/a6;

.field public static final g:Lio/branch/search/a6;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/a6$a;

    invoke-direct {v0}, Lio/branch/search/a6$a;-><init>()V

    sput-object v0, Lio/branch/search/a6;->b:Lio/branch/search/a6;

    new-instance v0, Lio/branch/search/a6$b;

    invoke-direct {v0}, Lio/branch/search/a6$b;-><init>()V

    sput-object v0, Lio/branch/search/a6;->c:Lio/branch/search/a6;

    new-instance v0, Lio/branch/search/a6$c;

    invoke-direct {v0}, Lio/branch/search/a6$c;-><init>()V

    sput-object v0, Lio/branch/search/a6;->d:Lio/branch/search/a6;

    new-instance v0, Lio/branch/search/a6$d;

    invoke-direct {v0}, Lio/branch/search/a6$d;-><init>()V

    sput-object v0, Lio/branch/search/a6;->e:Lio/branch/search/a6;

    new-instance v0, Lio/branch/search/a6$e;

    invoke-direct {v0}, Lio/branch/search/a6$e;-><init>()V

    sput-object v0, Lio/branch/search/a6;->f:Lio/branch/search/a6;

    new-instance v0, Lio/branch/search/a6$f;

    invoke-direct {v0}, Lio/branch/search/a6$f;-><init>()V

    sput-object v0, Lio/branch/search/a6;->g:Lio/branch/search/a6;

    return-void
.end method


# virtual methods
.method public abstract a(Lio/branch/search/m;Lio/branch/search/t5;)Ljava/util/List;
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/t5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Lio/branch/search/t5;",
            ")",
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation
.end method
