.class public interface abstract Ld1/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ld1/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ld1/j$a;

    invoke-direct {v0}, Ld1/j$a;-><init>()V

    new-instance v1, Ld1/j;

    iget-object v0, v0, Ld1/j$a;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Ld1/j;-><init>(Ljava/util/Map;)V

    sput-object v1, Ld1/h;->a:Ld1/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
