.class public abstract Lz0/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lz0/k;

.field public static final b:Lz0/k;

.field public static final c:Lz0/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz0/k$a;

    invoke-direct {v0}, Lz0/k$a;-><init>()V

    sput-object v0, Lz0/k;->a:Lz0/k;

    new-instance v0, Lz0/k$b;

    invoke-direct {v0}, Lz0/k$b;-><init>()V

    sput-object v0, Lz0/k;->b:Lz0/k;

    new-instance v0, Lz0/k$c;

    invoke-direct {v0}, Lz0/k$c;-><init>()V

    sput-object v0, Lz0/k;->c:Lz0/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/bumptech/glide/load/a;)Z
.end method

.method public abstract d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
.end method
