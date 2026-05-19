.class public final La8/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Lc8/b;


# direct methods
.method public constructor <init>(Lb8/c;)V
    .registers 3

    const-string v0, "conf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lb8/c;->a:Z

    iput-boolean v0, p0, La8/c;->a:Z

    iget-boolean v0, p1, Lb8/c;->b:Z

    iput-boolean v0, p0, La8/c;->b:Z

    iget-boolean v0, p1, Lb8/c;->c:Z

    iput-boolean v0, p0, La8/c;->c:Z

    iget-boolean v0, p1, Lb8/c;->d:Z

    iput-boolean v0, p0, La8/c;->d:Z

    iget-boolean v0, p1, Lb8/c;->e:Z

    iput-boolean v0, p0, La8/c;->e:Z

    iget-object v0, p1, Lb8/c;->f:Ljava/lang/String;

    iput-object v0, p0, La8/c;->f:Ljava/lang/String;

    iget-boolean v0, p1, Lb8/c;->g:Z

    iput-boolean v0, p0, La8/c;->g:Z

    iget-boolean v0, p1, Lb8/c;->h:Z

    iput-boolean v0, p0, La8/c;->h:Z

    iget-object v0, p1, Lb8/c;->i:Ljava/lang/String;

    iput-object v0, p0, La8/c;->i:Ljava/lang/String;

    iget-boolean v0, p1, Lb8/c;->j:Z

    iput-boolean v0, p0, La8/c;->j:Z

    iget-object p1, p1, Lb8/c;->k:Lc8/b;

    iput-object p1, p0, La8/c;->k:Lc8/b;

    return-void
.end method
