.class public final Le8/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/x$a;
    }
.end annotation


# instance fields
.field public final a:Le8/r;

.field public final b:Ljava/lang/String;

.field public final c:Le8/q;

.field public final d:Le8/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Le8/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/x$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Le8/x$a;->a:Le8/r;

    iput-object v0, p0, Le8/x;->a:Le8/r;

    iget-object v0, p1, Le8/x$a;->b:Ljava/lang/String;

    iput-object v0, p0, Le8/x;->b:Ljava/lang/String;

    iget-object v0, p1, Le8/x$a;->c:Le8/q$a;

    new-instance v1, Le8/q;

    invoke-direct {v1, v0}, Le8/q;-><init>(Le8/q$a;)V

    iput-object v1, p0, Le8/x;->c:Le8/q;

    iget-object v0, p1, Le8/x$a;->d:Le8/y;

    iput-object v0, p0, Le8/x;->d:Le8/y;

    iget-object p1, p1, Le8/x$a;->e:Ljava/util/Map;

    sget-object v0, Lf8/c;->a:[B

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_30

    :cond_27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_30
    iput-object p1, p0, Le8/x;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Le8/c;
    .registers 2

    iget-object v0, p0, Le8/x;->f:Le8/c;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Le8/x;->c:Le8/q;

    invoke-static {v0}, Le8/c;->a(Le8/q;)Le8/c;

    move-result-object v0

    iput-object v0, p0, Le8/x;->f:Le8/c;

    :goto_d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Request{method="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le8/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/x;->a:Le8/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le8/x;->e:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
