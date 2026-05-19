.class public Lb6/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb6/b$b;,
        Lb6/b$d;,
        Lb6/b$e;,
        Lb6/b$c;
    }
.end annotation


# static fields
.field public static final j:Z

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lb6/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:Lb6/a$a;

.field public i:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "kotlin.ignore.old.metadata"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lb6/b;->j:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb6/b;->k:Ljava/util/Map;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    sget-object v2, Lb6/a$a;->d:Lb6/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    sget-object v2, Lb6/a$a;->e:Lb6/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    sget-object v2, Lb6/a$a;->g:Lb6/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    sget-object v2, Lb6/a$a;->h:Lb6/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    sget-object v2, Lb6/a$a;->f:Lb6/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb6/b;->a:[I

    iput-object v0, p0, Lb6/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lb6/b;->c:I

    iput-object v0, p0, Lb6/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lb6/b;->e:[Ljava/lang/String;

    iput-object v0, p0, Lb6/b;->f:[Ljava/lang/String;

    iput-object v0, p0, Lb6/b;->g:[Ljava/lang/String;

    iput-object v0, p0, Lb6/b;->h:Lb6/a$a;

    iput-object v0, p0, Lb6/b;->i:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(Lh6/b;Li5/v0;)La6/t$a;
    .registers 5

    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object p2

    sget-object v0, Lr5/f0;->a:Lh6/c;

    invoke-virtual {p2, v0}, Lh6/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    new-instance p1, Lb6/b$c;

    invoke-direct {p1, p0, v1}, Lb6/b$c;-><init>(Lb6/b;Lb6/b$a;)V

    return-object p1

    :cond_13
    sget-object v0, Lr5/f0;->o:Lh6/c;

    invoke-virtual {p2, v0}, Lh6/c;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    new-instance p1, Lb6/b$d;

    invoke-direct {p1, p0, v1}, Lb6/b$d;-><init>(Lb6/b;Lb6/b$a;)V

    return-object p1

    :cond_21
    sget-boolean p2, Lb6/b;->j:Z

    if-eqz p2, :cond_26

    return-object v1

    :cond_26
    iget-object p2, p0, Lb6/b;->h:Lb6/a$a;

    if-eqz p2, :cond_2b

    return-object v1

    :cond_2b
    sget-object p2, Lb6/b;->k:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/a$a;

    if-eqz p1, :cond_3f

    iput-object p1, p0, Lb6/b;->h:Lb6/a$a;

    new-instance p1, Lb6/b$e;

    invoke-direct {p1, p0, v1}, Lb6/b$e;-><init>(Lb6/b;Lb6/b$a;)V

    return-object p1

    :cond_3f
    return-object v1
.end method
