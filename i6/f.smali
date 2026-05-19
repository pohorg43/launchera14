.class public Li6/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/f$a;
    }
.end annotation


# static fields
.field public static final b:Li6/f;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li6/f$a;",
            "Li6/h$f<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Li6/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li6/f;-><init>(Z)V

    sput-object v0, Li6/f;->b:Li6/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li6/f;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Li6/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Li6/h$f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/h$f<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Li6/f;->a:Ljava/util/Map;

    new-instance v0, Li6/f$a;

    iget-object v1, p1, Li6/h$f;->a:Li6/p;

    iget-object v2, p1, Li6/h$f;->d:Li6/h$e;

    iget v2, v2, Li6/h$e;->b:I

    invoke-direct {v0, v1, v2}, Li6/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
