.class public final Lb8/o$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb8/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final c:Ljava/lang/StringBuilder;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final d:La8/a;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;La8/a;)V
    .registers 4

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lb8/o$a;->d:La8/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb8/o$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb8/o$a;->b:Z

    iget-object v1, p0, Lb8/o$a;->d:La8/a;

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->e:Z

    if-eqz v1, :cond_20

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lb8/o$a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb8/o$a;->a:I

    :goto_12
    if-ge v0, v1, :cond_20

    iget-object v2, p0, Lb8/o$a;->d:La8/a;

    iget-object v2, v2, La8/a;->a:Lb8/c;

    iget-object v2, v2, Lb8/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lb8/o$a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lb8/o$a;->d:La8/a;

    iget-object v0, v0, La8/a;->a:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->e:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x20

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method
