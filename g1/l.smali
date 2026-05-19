.class public abstract Lg1/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/l$a;,
        Lg1/l$d;,
        Lg1/l$b;,
        Lg1/l$c;
    }
.end annotation


# static fields
.field public static final a:Lg1/l;

.field public static final b:Lg1/l;

.field public static final c:Lg1/l;

.field public static final d:Lg1/l;

.field public static final e:Lg1/l;

.field public static final f:Lw0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/d<",
            "Lg1/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lg1/l$c;

    invoke-direct {v0}, Lg1/l$c;-><init>()V

    sput-object v0, Lg1/l;->a:Lg1/l;

    new-instance v0, Lg1/l$a;

    invoke-direct {v0}, Lg1/l$a;-><init>()V

    sput-object v0, Lg1/l;->b:Lg1/l;

    new-instance v0, Lg1/l$b;

    invoke-direct {v0}, Lg1/l$b;-><init>()V

    sput-object v0, Lg1/l;->c:Lg1/l;

    new-instance v1, Lg1/l$d;

    invoke-direct {v1}, Lg1/l$d;-><init>()V

    sput-object v1, Lg1/l;->d:Lg1/l;

    sput-object v0, Lg1/l;->e:Lg1/l;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, Lw0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lw0/d;

    move-result-object v0

    sput-object v0, Lg1/l;->f:Lw0/d;

    const/4 v0, 0x1

    sput-boolean v0, Lg1/l;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)I
.end method

.method public abstract b(IIII)F
.end method
