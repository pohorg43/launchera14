.class public interface abstract Lu6/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lu6/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu6/q$a;

    invoke-direct {v0}, Lu6/q$a;-><init>()V

    sput-object v0, Lu6/q;->a:Lu6/q;

    return-void
.end method


# virtual methods
.method public abstract a(Li5/e;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Li5/b;)V
.end method
