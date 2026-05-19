.class public Ly0/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Ly0/a;


# instance fields
.field public final a:Ly0/d;

.field public final b:La1/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly0/a;

    invoke-direct {v0}, Ly0/a;-><init>()V

    sput-object v0, Ly0/e;->e:Ly0/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ly0/d;La1/b;Landroid/content/ContentResolver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ly0/d;",
            "La1/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly0/e;->a:Ly0/d;

    iput-object p3, p0, Ly0/e;->b:La1/b;

    iput-object p4, p0, Ly0/e;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, Ly0/e;->d:Ljava/util/List;

    return-void
.end method
