.class public final Lh5/b;
.super Lf5/g;
.source ""


# static fields
.field public static final f:Lh5/b;

.field public static final g:Lf5/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh5/b;

    invoke-direct {v0}, Lh5/b;-><init>()V

    sput-object v0, Lh5/b;->g:Lf5/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lx6/e;

    const-string v1, "FallbackBuiltIns"

    invoke-direct {v0, v1}, Lx6/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lf5/g;-><init>(Lx6/m;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf5/g;->d(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic r()Lk5/c;
    .registers 1

    sget-object p0, Lk5/c$a;->a:Lk5/c$a;

    return-object p0
.end method
