.class public Lv1/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv1/v;


# instance fields
.field public final synthetic a:Lv1/y;


# direct methods
.method public constructor <init>(Lv1/y;)V
    .registers 2

    iput-object p1, p0, Lv1/z;->a:Lv1/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lw1/a;)V
    .registers 4

    iget-object p0, p0, Lv1/z;->a:Lv1/y;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lv1/y;->d(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv1/z;->a:Lv1/y;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lv1/y;->e(Ljava/util/Map;I)V

    return-void
.end method

.method public c(Ljava/lang/String;Lw1/a;)V
    .registers 4

    iget-object p0, p0, Lv1/z;->a:Lv1/y;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lv1/y;->d(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Lw1/a;)V
    .registers 4

    iget-object p0, p0, Lv1/z;->a:Lv1/y;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lv1/y;->d(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public e(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv1/z;->a:Lv1/y;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lv1/y;->e(Ljava/util/Map;I)V

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv1/z;->a:Lv1/y;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lv1/y;->e(Ljava/util/Map;I)V

    return-void
.end method
