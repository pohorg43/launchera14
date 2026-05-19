.class public final Lk7/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .registers 4

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/e;->a:Ljava/util/regex/Matcher;

    new-instance p1, Lk7/e$b;

    invoke-direct {p1, p0}, Lk7/e$b;-><init>(Lk7/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/e;->b:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Lk7/e$a;

    invoke-direct {v0, p0}, Lk7/e$a;-><init>(Lk7/e;)V

    iput-object v0, p0, Lk7/e;->b:Ljava/util/List;

    :cond_b
    iget-object p0, p0, Lk7/e;->b:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
