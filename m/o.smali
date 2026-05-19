.class public Lm/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ll/b;

.field public final d:Ll/b;

.field public final e:Ll/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILl/b;Ll/b;Ll/b;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/o;->a:Ljava/lang/String;

    iput p2, p0, Lm/o;->b:I

    iput-object p3, p0, Lm/o;->c:Ll/b;

    iput-object p4, p0, Lm/o;->d:Ll/b;

    iput-object p5, p0, Lm/o;->e:Ll/b;

    iput-boolean p6, p0, Lm/o;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 3

    new-instance p1, Lh/s;

    invoke-direct {p1, p2, p0}, Lh/s;-><init>(Ln/b;Lm/o;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Trim Path: {start: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/o;->c:Ll/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/o;->d:Ll/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm/o;->e:Ll/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
